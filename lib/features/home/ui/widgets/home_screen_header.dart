import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../common/common_bloc/search_bloc/search_bloc.dart';
import '../../../common/common_bloc/search_bloc/search_event.dart';
import '../../../common/common_widgets/app_search_bar.dart';

class HomeScreenHeader extends StatefulWidget {
  const HomeScreenHeader({super.key});

  @override
  State<HomeScreenHeader> createState() => _HomeScreenHeaderState();
}

class _HomeScreenHeaderState extends State<HomeScreenHeader> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();
  bool _hasFocus = false;

  @override
  void initState() {
    super.initState();

    _focusNode.addListener(() {
      setState(() {
        _hasFocus = _focusNode.hasFocus;
      });

      context.read<SearchBloc>().add(SearchFocusChanged(_focusNode.hasFocus));
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: AppSearchBar(
        controller: _controller,
        focusNode: _focusNode,
        onChanged: (value) {
          context.read<SearchBloc>().add(SearchQueryChanged(value));
        },
        suffixIcon: _hasFocus
            ? IconButton(
          icon: const Icon(Icons.cancel_outlined, color: AppColors.grey),
          onPressed: () {
            _controller.clear();
            _focusNode.unfocus();
            context.read<SearchBloc>().add(SearchQueryChanged(''));
            // This will trigger `SearchFocusChanged(false)` automatically from the listener
          },
        )
            : null,
      ),
      centerTitle: true,
      actionsPadding: const EdgeInsets.only(right: 12),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.account_circle,
            size: 40,
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }
}

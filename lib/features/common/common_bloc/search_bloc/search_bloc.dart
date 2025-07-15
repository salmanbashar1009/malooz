import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malooz/features/common/common_bloc/search_bloc/search_event.dart';
import 'package:malooz/features/common/common_bloc/search_bloc/search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final Map<String, List<String>> _originalData = {
    "MOVIES & SERIES": List.generate(6, (_) => "Lorem Ipsum Is Simply Dummy Text Of  Industry.2025"),
    "LIVE": List.generate(6, (_) => "Lorem Ipsum Is Simply Dummy Text Of  Industry.2025"),
    "SPORTS": List.generate(6, (_) => "Lorem Ipsum Is Simply Dummy Text Of  Industry.2025"),
    "MATCH HIGHLIGHTS": List.generate(6, (_) => "Lorem Ipsum Is Simply Dummy Text Of  Industry.2025"),
    "DOCUMENTARIES": List.generate(6, (_) => "Lorem Ipsum Is Simply Dummy Text Of  Industry.2025"),
    "SPECIAL EVENTS": List.generate(6, (_) => "Lorem Ipsum Is Simply Dummy Text Of  Industry.2025"),
  };

  SearchBloc()
      : super(SearchState(showList: false, query: '', filteredData: {})) {
    on<SearchFocusChanged>((event, emit) {
      final filtered = _filterData(state.query);
      emit(state.copyWith(showList: event.hasFocus, filteredData: filtered));
    });

    on<SearchQueryChanged>((event, emit) {
      final filtered = _filterData(event.query);
      emit(state.copyWith(query: event.query, filteredData: filtered));
    });
  }

  Map<String, List<String>> _filterData(String query) {
    if (query.isEmpty) return _originalData;
    final q = query.toLowerCase();
    return {
      for (var e in _originalData.entries)
        e.key: e.value.where((item) => item.toLowerCase().contains(q)).toList()
    }..removeWhere((_, v) => v.isEmpty);
  }
}

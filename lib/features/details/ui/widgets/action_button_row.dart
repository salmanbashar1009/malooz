import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_padding.dart';

import '../../../../core/constant/app_colors.dart';

class ActionButtonsRow extends StatelessWidget {
  const ActionButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisSize: MainAxisSize.min,
      children: [
        _ActionItem(icon: Icons.favorite_border, label: 'Favorite'),
        _buildDivider(),
        _ActionItem(icon: Icons.star, label: 'Rate'),
        _buildDivider(),
        _ActionItem(icon: Icons.share, label: 'Share'),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 30,
      width: 1,
      color: AppColors.white,
      margin: AppPadding.horizontal16,
    );
  }
}

class _ActionItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ActionItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 24,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import '../../theme/styles/app_colors.dart';

class MadeByExtrawestTile extends StatelessWidget {
  const MadeByExtrawestTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.blueGrey,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        'Made by Extrawest',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}

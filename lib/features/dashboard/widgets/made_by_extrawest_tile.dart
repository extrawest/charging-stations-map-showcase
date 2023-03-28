import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../theme/styles/app_colors.dart';

class MadeByExtrawestTile extends StatelessWidget {
  const MadeByExtrawestTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launchUrl(Uri.parse('https://www.extrawest.com/')),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.blueGrey,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text(
          'Made by Extrawest',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}

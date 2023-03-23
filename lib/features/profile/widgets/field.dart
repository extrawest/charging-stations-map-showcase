import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maps_app/generated/locale_keys.g.dart';
import '../../../generated/assets.gen.dart';
import '../../theme/styles/app_colors.dart';

class Field extends StatelessWidget {
  Field.name(
    this.content, {
    super.key,
  })  : label = LocaleKeys.profile_field_name.tr(),
        icon = Assets.images.profile.name.svg();

  Field.email(
    this.content, {
    super.key,
  })  : label = LocaleKeys.profile_field_email.tr(),
        icon = Assets.images.profile.email.svg();

  final String label;
  final String content;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: AppColors.textGrey),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.blueGrey, width: 1),
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              icon,
              const SizedBox(width: 12),
              Text(
                content,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

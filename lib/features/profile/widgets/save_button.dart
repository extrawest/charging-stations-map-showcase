import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maps_app/generated/locale_keys.g.dart';

import '../../theme/styles/app_colors.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        LocaleKeys.profile_save.tr(),
        style: Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(color: AppColors.textGrey),
      ),
    );
  }
}

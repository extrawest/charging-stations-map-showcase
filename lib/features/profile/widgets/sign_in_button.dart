import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps_app/generated/locale_keys.g.dart';

import '../../../generated/assets.gen.dart';
import '../../theme/styles/app_colors.dart';
import '../bloc/auth_cubit.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: context.read<AuthCubit>().signIn,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: AppColors.grey,
            width: 2,
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Assets.images.profile.google.image(),
            Text(
              LocaleKeys.profile_sign_up_google.tr(),
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: AppColors.textGrey),
            ),
            const SizedBox(width: 22),
          ],
        ),
      ),
    );
  }
}

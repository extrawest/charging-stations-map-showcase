import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../generated/locale_keys.g.dart';
import '../../theme/styles/app_colors.dart';
import '../bloc/auth_cubit.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: context.read<AuthCubit>().logout,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 7),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          LocaleKeys.profile_logout.tr(),
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: AppColors.textGrey),
        ),
      ),
    );
  }
}

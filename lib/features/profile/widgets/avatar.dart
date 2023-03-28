import 'package:flutter/material.dart';
import '../../../generated/assets.gen.dart';
import '../../theme/styles/app_colors.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
    required this.avatarUrl,
  });

  final String? avatarUrl;

  ImageProvider<Object>? get image {
    if (avatarUrl == null) {
      return null;
    }
    return NetworkImage(avatarUrl!);
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 45,
      foregroundImage: image,
      child: const _Stub(),
    );
  }
}

class _Stub extends StatelessWidget {
  const _Stub();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      padding: const EdgeInsets.all(28),
      decoration: const BoxDecoration(
        color: AppColors.grey,
        shape: BoxShape.circle,
      ),
      child: Assets.images.profile.photo.svg(),
    );
  }
}

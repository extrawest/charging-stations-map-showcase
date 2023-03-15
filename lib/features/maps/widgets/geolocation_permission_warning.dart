import 'package:flutter/material.dart';

class GeolocationPermissionWarning extends StatelessWidget {
  const GeolocationPermissionWarning({
    super.key,
    required this.onOpenSettings,
  });

  final VoidCallback onOpenSettings;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onOpenSettings,
      child: Container(
        padding: const EdgeInsets.all(6),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              color: Theme.of(context).shadowColor.withOpacity(0.6),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.all(16),
        width: double.infinity,
        height: 70,
        child: Text(
          'You have to give access to geolocation permission. Tap to open settings.',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ApplySettingsButton extends StatelessWidget {
  const ApplySettingsButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Theme.of(context).shadowColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          'Apply',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
    );
  }
}

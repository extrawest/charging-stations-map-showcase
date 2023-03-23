import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maps_app/generated/locale_keys.g.dart';
import '../widgets/avatar.dart';
import '../widgets/field.dart';
import '../widgets/logout_button.dart';
import '../widgets/save_button.dart';

class SignedProfileScreen extends StatefulWidget {
  const SignedProfileScreen({
    super.key,
    required this.email,
    this.username,
    this.avatarUrl,
  });

  final String email;
  final String? username;
  final String? avatarUrl;

  @override
  State<SignedProfileScreen> createState() => _SignedProfileScreenState();
}

class _SignedProfileScreenState extends State<SignedProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          LocaleKeys.profile_title.tr(),
          style: Theme.of(context).textTheme.titleMedium,
        ),
        actions: const [SaveButton()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Avatar(avatarUrl: widget.avatarUrl),
                const SizedBox(height: 36),
                Field.name(widget.username ?? ''),
                const SizedBox(height: 13),
                Field.email(widget.email),
                const SizedBox(height: 185),
                const LogoutButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

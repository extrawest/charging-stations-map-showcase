import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:maps_app/generated/locale_keys.g.dart';

import '../../../common/router.dart';
import '../../theme/styles/app_colors.dart';
import '../widgets/search_prefix.dart';
import '../widgets/serch_suffix.dart';

class SearchField extends StatefulWidget {
  const SearchField.disabled({super.key})
      : onChanged = null,
        _onPressed = _goToSearchPage,
        _prefix = const SearchPrefix(),
        _isEnabled = false;

  const SearchField.enabled({
    super.key,
    required this.onChanged,
  })  : _prefix = null,
        _onPressed = null,
        _isEnabled = true;

  final Widget? _prefix;
  final void Function(BuildContext)? _onPressed;
  final ValueSetter<String>? onChanged;

  final bool _isEnabled;

  static void _goToSearchPage(BuildContext context) {
    context.push(searchRoute);
  }

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  InputBorder get _border => OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(
          color: AppColors.blueGrey,
          width: 1,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget._onPressed?.call(context),
      child: TextField(
        onChanged: widget.onChanged,
        enabled: widget._isEnabled,
        cursorColor: AppColors.textGrey,
        controller: _controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(14),
          hintText: LocaleKeys.search_hint.tr(),
          hintStyle: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: AppColors.textGrey),
          filled: true,
          fillColor: Theme.of(context).primaryColor,
          border: _border,
          focusedBorder: _border,
          disabledBorder: _border,
          enabledBorder: _border,
          prefixIcon: widget._prefix,
          suffixIcon: const SearchSuffix(),
        ),
      ),
    );
  }
}

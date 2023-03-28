import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../generated/assets.gen.dart';

class SearchSuffix extends StatelessWidget {
  const SearchSuffix({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: context.pop,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Assets.images.search.suffix.svg(),
      ),
    );
  }
}

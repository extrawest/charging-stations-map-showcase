import 'package:flutter/material.dart';

import '../../../generated/assets.gen.dart';

class SearchPrefix extends StatelessWidget {
  const SearchPrefix({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Assets.images.search.prefix.svg(),
    );
  }
}

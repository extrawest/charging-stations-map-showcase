import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../generated/assets.gen.dart';
import '../../../generated/locale_keys.g.dart';
import '../widgets/charging_indicator.dart';
import '../widgets/charging_indicator_content.dart';
import '../widgets/charging_info_content.dart';

class ChargingScreen extends StatelessWidget {
  const ChargingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 40,
        leading: GestureDetector(
          onTap: context.pop,
          child: Container(
            padding: const EdgeInsets.only(left: 16),
            child: Assets.images.appBar.back.svg(height: 24, width: 24),
          ),
        ),
        title: Text(
          LocaleKeys.charging_title.tr(),
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.normal),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 15,
                color: Colors.black.withOpacity(0.15),
              )
            ],
          ),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              SizedBox(height: 24),
              ChargingIndicator(child: ChargingIndicatorContent()),
              SizedBox(height: 15),
              ChargingInfoContent(),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

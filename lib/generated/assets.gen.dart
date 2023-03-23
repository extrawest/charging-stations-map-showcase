/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsI18nGen {
  const $AssetsI18nGen();

  /// File path: assets/i18n/en-US.json
  String get enUS => 'assets/i18n/en-US.json';

  /// File path: assets/i18n/uk-UA.json
  String get ukUA => 'assets/i18n/uk-UA.json';

  /// List of all assets
  List<String> get values => [enUS, ukUA];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesAppBarGen get appBar => const $AssetsImagesAppBarGen();
  $AssetsImagesBottomNavBarGen get bottomNavBar =>
      const $AssetsImagesBottomNavBarGen();
  $AssetsImagesChargingGen get charging => const $AssetsImagesChargingGen();
  $AssetsImagesMapActionsGen get mapActions =>
      const $AssetsImagesMapActionsGen();
  $AssetsImagesMapTypesGen get mapTypes => const $AssetsImagesMapTypesGen();
  $AssetsImagesSearchGen get search => const $AssetsImagesSearchGen();
  $AssetsImagesStationDetailsGen get stationDetails =>
      const $AssetsImagesStationDetailsGen();
}

class $AssetsImagesAppBarGen {
  const $AssetsImagesAppBarGen();

  /// File path: assets/images/app_bar/back.svg
  SvgGenImage get back => const SvgGenImage('assets/images/app_bar/back.svg');

  /// List of all assets
  List<SvgGenImage> get values => [back];
}

class $AssetsImagesBottomNavBarGen {
  const $AssetsImagesBottomNavBarGen();

  /// File path: assets/images/bottom_nav_bar/favourites.svg
  SvgGenImage get favourites =>
      const SvgGenImage('assets/images/bottom_nav_bar/favourites.svg');

  /// File path: assets/images/bottom_nav_bar/lightning.svg
  SvgGenImage get lightning =>
      const SvgGenImage('assets/images/bottom_nav_bar/lightning.svg');

  /// File path: assets/images/bottom_nav_bar/map.svg
  SvgGenImage get map =>
      const SvgGenImage('assets/images/bottom_nav_bar/map.svg');

  /// File path: assets/images/bottom_nav_bar/profile.svg
  SvgGenImage get profile =>
      const SvgGenImage('assets/images/bottom_nav_bar/profile.svg');

  /// File path: assets/images/bottom_nav_bar/wallet.svg
  SvgGenImage get wallet =>
      const SvgGenImage('assets/images/bottom_nav_bar/wallet.svg');

  /// List of all assets
  List<SvgGenImage> get values => [favourites, lightning, map, profile, wallet];
}

class $AssetsImagesChargingGen {
  const $AssetsImagesChargingGen();

  /// File path: assets/images/charging/charge.svg
  SvgGenImage get charge =>
      const SvgGenImage('assets/images/charging/charge.svg');

  /// List of all assets
  List<SvgGenImage> get values => [charge];
}

class $AssetsImagesMapActionsGen {
  const $AssetsImagesMapActionsGen();

  /// File path: assets/images/map_actions/location.png
  AssetGenImage get location =>
      const AssetGenImage('assets/images/map_actions/location.png');

  /// File path: assets/images/map_actions/settings.svg
  SvgGenImage get settings =>
      const SvgGenImage('assets/images/map_actions/settings.svg');

  /// List of all assets
  List<dynamic> get values => [location, settings];
}

class $AssetsImagesMapTypesGen {
  const $AssetsImagesMapTypesGen();

  /// File path: assets/images/map_types/normal.png
  AssetGenImage get normal =>
      const AssetGenImage('assets/images/map_types/normal.png');

  /// File path: assets/images/map_types/satellite.png
  AssetGenImage get satellite =>
      const AssetGenImage('assets/images/map_types/satellite.png');

  /// List of all assets
  List<AssetGenImage> get values => [normal, satellite];
}

class $AssetsImagesSearchGen {
  const $AssetsImagesSearchGen();

  /// File path: assets/images/search/empty_state.png
  AssetGenImage get emptyState =>
      const AssetGenImage('assets/images/search/empty_state.png');

  /// File path: assets/images/search/prefix.svg
  SvgGenImage get prefix =>
      const SvgGenImage('assets/images/search/prefix.svg');

  /// File path: assets/images/search/suffix.svg
  SvgGenImage get suffix =>
      const SvgGenImage('assets/images/search/suffix.svg');

  /// List of all assets
  List<dynamic> get values => [emptyState, prefix, suffix];
}

class $AssetsImagesStationDetailsGen {
  const $AssetsImagesStationDetailsGen();

  /// File path: assets/images/station_details/connector.svg
  SvgGenImage get connector =>
      const SvgGenImage('assets/images/station_details/connector.svg');

  /// File path: assets/images/station_details/distance.svg
  SvgGenImage get distance =>
      const SvgGenImage('assets/images/station_details/distance.svg');

  /// File path: assets/images/station_details/image.svg
  SvgGenImage get image =>
      const SvgGenImage('assets/images/station_details/image.svg');

  /// List of all assets
  List<SvgGenImage> get values => [connector, distance, image];
}

class Assets {
  Assets._();

  static const String configDev = 'assets/config_dev.json';
  static const $AssetsI18nGen i18n = $AssetsI18nGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();

  /// List of all assets
  List<String> get values => [configDev];
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated Clip? clipBehavior,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> uk_UA = {
  "bottom_nav_bar": {
    "map": "MAP",
    "favourites": "FAVOURITES",
    "account": "ACCOUNT"
  },
  "button": {
    "apply": "Apply"
  },
  "map_type": {
    "normal": "Normal",
    "satellite": "Satellite"
  },
  "station_detals": {
    "connectors": "Connectors",
    "coordinates": "Coordinates",
    "status": "Status: {}",
    "price_per_kwh": "$ {} per kWh",
    "kWh": "{} kWh",
    "charge": "Charge",
    "in_use": "In Use"
  }
};
static const Map<String,dynamic> en_US = {
  "bottom_nav_bar": {
    "map": "MAP",
    "favourites": "FAVOURITES",
    "account": "ACCOUNT"
  },
  "button": {
    "apply": "Apply"
  },
  "map_type": {
    "normal": "Normal",
    "satellite": "Satellite"
  },
  "station_detals": {
    "connectors": "Connectors",
    "coordinates": "Coordinates",
    "status": "Status: {}",
    "price_per_kwh": "$ {} per kWh",
    "kWh": "{} kWh",
    "charge": "Charge",
    "in_use": "In Use"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"uk_UA": uk_UA, "en_US": en_US};
}

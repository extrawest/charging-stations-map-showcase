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
    "map": "МАПА",
    "favourites": "УЛЮБЛЕНЕ",
    "account": "АККАУНТ"
  },
  "button": {
    "apply": "Застосувати"
  },
  "map_type": {
    "normal": "Звичвйна",
    "satellite": "Супутник"
  },
  "station_detals": {
    "connectors": "Розʼєми",
    "coordinates": "Координати",
    "status": "Статус: {}",
    "price_per_kwh": "$ {} за kWh",
    "kWh": "{} kWh",
    "charge": "Зарядити",
    "in_use": "В Вживанні"
  },
  "wallet": {
    "title": "Гаманець",
    "balance": "Баланс",
    "history": "Історія"
  },
  "charging": {
    "title": "Сеанс зарядки",
    "cost": "Ціна:",
    "delivered": "Доставлено",
    "starting_time": "Початковий час",
    "speed": "Швидкість зарядки",
    "amperage": "Сила струму",
    "voltage": "Напруга",
    "station_name": "Назва станції",
    "tariff": "Тариф",
    "coonrinated": "Координати",
    "start_charging": "Почати зарядку"
  },
  "search": {
    "no_results": "Вибачте, результатів не знайдено",
    "hint": "Почніть писати тут"
  },
  "profile": {
    "title": "Профіль",
    "save": "Зберегти",
    "sign_up": "Зареєструватися",
    "sign_up_google": "Зареєструватися із Google",
    "logout": "Вийти",
    "field": {
      "name": "Імʼя",
      "email": "Електрона пошта"
    }
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
  },
  "wallet": {
    "title": "Wallet",
    "balance": "Balance",
    "history": "History"
  },
  "charging": {
    "title": "Charging session",
    "cost": "Cost:",
    "delivered": "Delivered",
    "starting_time": "Starting time",
    "speed": "Charging speed",
    "amperage": "Amperage",
    "voltage": "Voltage",
    "station_name": "Station name",
    "tariff": "Tariff",
    "coonrinated": "Coordinates",
    "start_charging": "Start charging"
  },
  "search": {
    "no_results": "Sorry, no results found",
    "hint": "Type here"
  },
  "profile": {
    "title": "Profile",
    "save": "Save",
    "sign_up": "Sign Up",
    "sign_up_google": "Sign Up with Google",
    "logout": "Log out",
    "field": {
      "name": "Name",
      "email": "Email"
    }
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"uk_UA": uk_UA, "en_US": en_US};
}

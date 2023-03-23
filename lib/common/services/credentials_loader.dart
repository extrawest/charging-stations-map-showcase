import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/logger.dart';

part 'credentials_loader.freezed.dart';
part 'credentials_loader.g.dart';

class CredentialsLoader {
  final String pathToFile;

  CredentialsLoader({required this.pathToFile});

  Future<Credentials> load() async {
    return rootBundle.loadStructuredData<Credentials>(pathToFile,
        (jsonStr) async {
      final secret = Credentials.fromJson(json.decode(jsonStr));
      log.fine('secret $secret');
      return secret;
    });
  }
}

@freezed
class Credentials with _$Credentials {
  const factory Credentials({
    required String appName,
    required String apiDomain,
    required String googleClientIdWeb,
  }) = _Credentials;

  factory Credentials.fromJson(Map<String, dynamic> json) =>
      _$CredentialsFromJson(json);
}

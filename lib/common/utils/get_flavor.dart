import 'package:flutter/services.dart';

Future<String?> getFlavor() async {
  return 'dev';
  const channel = MethodChannel('flavor_channel');
  final flavor = await channel.invokeMethod<String>('getFlavor');
  return flavor;
}

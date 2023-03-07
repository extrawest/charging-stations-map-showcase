import 'package:flutter_bloc_project_starter/common/configuration/configuration.dart';
import '../services/credentials_loader.dart';
import 'get_flavor.dart';
import 'logger.dart';

Future<Credentials> loadCredentials() async {
  try {
    final flavor = await getFlavor();
    final credentials = await CredentialsLoader(
      pathToFile: _credentialsFileForFlavor(flavor),
    ).load();
    return credentials;
  } catch (e) {
    log.fine('loadCredentials error: $e');
    rethrow;
  }
}

String _credentialsFileForFlavor(String? flavor) {
  switch (flavor) {
    case 'prod':
      return AppCredentials.credentialsProdFile;
    case 'dev':
      return AppCredentials.credentialsDevFile;
    default:
      return AppCredentials.credentialsDevFile;
  }
}

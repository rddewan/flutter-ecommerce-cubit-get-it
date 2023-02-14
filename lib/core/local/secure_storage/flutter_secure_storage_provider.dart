
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class FlutterSecureStorageProvider  {

  FlutterSecureStorage getFlutterSecureStorage() {

    AndroidOptions androidOptions = const AndroidOptions(
      encryptedSharedPreferences: true,
    );

    IOSOptions iosOptions = const IOSOptions(
      accessibility: KeychainAccessibility.first_unlock,
    );

    return  FlutterSecureStorage(
      aOptions: androidOptions,
      iOptions: iosOptions,
    );
    
  }

  

}
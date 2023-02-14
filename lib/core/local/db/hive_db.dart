import 'dart:convert';

import 'package:ecommerce_cubit_getit/core/local/db/hive_box_const.dart';
import 'package:ecommerce_cubit_getit/core/local/secure_storage/secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveDb {
  final SecureStorage _secureStorage;

  HiveDb(this._secureStorage);

  Future<void> init() async {
    //You can provide a [subDir] where the boxes should be stored.
    await Hive.initFlutter(hiveDbPath);

    String? encryptionKey;
    encryptionKey = await _secureStorage.getHiveKey();

    if (encryptionKey == null) {
      //Generates a secure encryption key using the fortuna random algorithm
      final key = Hive.generateSecureKey();

      // store the key to flutter secure storage
      await _secureStorage.setHiveKey(base64UrlEncode(key));

      // read the key
      encryptionKey = await _secureStorage.getHiveKey();
    }

    if (encryptionKey != null) {
      final key = base64Url.decode(encryptionKey);

      await Hive.openBox(
        settingBox,
        encryptionCipher: HiveAesCipher(key),
      );
    }
    
  }
}



import 'package:ecommerce_cubit_getit/core/local/secure_storage/isecure_storage.dart';
import 'package:ecommerce_cubit_getit/core/local/secure_storage/secure_storage_const.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';


class SecureStorage implements ISecureStorage {
  final FlutterSecureStorage _flutterSecureStorage;

  SecureStorage(this._flutterSecureStorage);

  
  @override
  Future<String?> getHiveKey() async{
    return await _flutterSecureStorage.read(key: hiveKey);
   }

  @override
  Future<void> setHiveKey(String value) async{
    await _flutterSecureStorage.write(key: hiveKey, value: value);
    
  }

}
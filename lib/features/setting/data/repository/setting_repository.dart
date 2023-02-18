


import 'package:ecommerce_cubit_getit/features/setting/data/repository/isetting_repository.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SettingRepository implements ISettingRepository {
  final Box _box;

  SettingRepository(this._box);
  

  @override
  Future<bool> addToBox<T>(String key, T? value) async {
    await _box.put(key, value);

    return true;

  }

  @override
  Future<T?> getFromBox<T>(String key) async {
    return await _box.get(key);    
  }

}

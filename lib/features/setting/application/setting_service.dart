

import 'package:ecommerce_cubit_getit/features/setting/application/isetting_service.dart';
import 'package:ecommerce_cubit_getit/features/setting/data/repository/isetting_repository.dart';

class SettingService implements ISettingService {
  final ISettingRepository _settingRepository;

  SettingService(this._settingRepository);

  

  @override
  Future<bool> addToBox<T>(String key, T? value) async {
    final result = await _settingRepository.addToBox(key, value);

    return result;
    
  }

  @override
  Future<T?> getFromBox<T>(String key) async {
    return await _settingRepository.getFromBox(key);    
  }

}
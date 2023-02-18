

import 'dart:async';

import 'package:ecommerce_cubit_getit/core/local/db/hive_box_key_const.dart';
import 'package:ecommerce_cubit_getit/core/route/notifier/go_router_notifier.dart';
import 'package:ecommerce_cubit_getit/core/service_locator.dart';
import 'package:ecommerce_cubit_getit/features/setting/application/isetting_service.dart';
import 'package:ecommerce_cubit_getit/features/setting/presentation/state/setting_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingController extends Cubit<SettingState> {
  final ISettingService _settingService;
  
  SettingController(this._settingService): super(const SettingState());

  void logout() async {
    await _clearAccessToken();
    await _clearUserId();
    // update login status
    final result = await _settingService.getFromBox<String?>(accessTokenKey);
    emit(state.copyWith(isLoggedIn: result == null ? false : true));
    getIt.get<GoRouterNotifier>().isLoggedIn = result == null ? false : true;
    
  }

  void isLoggedIn() async {
    final result = await _settingService.getFromBox<String?>(accessTokenKey);
    // update login status
    emit(state.copyWith(isLoggedIn: result == null ? false : true));
    getIt.get<GoRouterNotifier>().isLoggedIn = result == null ? false : true;
  }

  Future<void> _clearAccessToken() async {

    await _settingService.addToBox<String?>(accessTokenKey, null);

  }

  Future<void> _clearUserId() async {

    await _settingService.addToBox<String?>(userIdKey, null);

  }

  

}
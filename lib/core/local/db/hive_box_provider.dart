
import 'package:ecommerce_cubit_getit/core/local/db/hive_box_const.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveBoxProvider {
  
   Box provideSettingBox() {
    return Hive.box(settingBox);
   }
}
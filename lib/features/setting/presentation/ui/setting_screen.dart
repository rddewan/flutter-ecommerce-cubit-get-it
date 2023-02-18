import 'package:ecommerce_cubit_getit/common/extensions/string_hardcoded.dart';
import 'package:ecommerce_cubit_getit/common/widget/app_scaffold_scrollable.dart';
import 'package:ecommerce_cubit_getit/features/setting/presentation/controller/setting_controller.dart';
import 'package:ecommerce_cubit_getit/features/setting/presentation/state/setting_state.dart';
import 'package:ecommerce_cubit_getit/features/setting/presentation/ui/widget/logout_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScaffoldScrollable(
      title: Text('Setting'.hardcoded),
      widget: Column(
        children: const [
          
        ],
      ),
      bottomNavigationBar: LogoutButtonWidget(onPressed: () {
        _logout(context);
      }),
    );
  }

  void _logout(BuildContext context) {
    context.read<SettingController>().logout();
  }
}

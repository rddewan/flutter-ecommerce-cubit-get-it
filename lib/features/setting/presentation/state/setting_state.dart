
import 'package:freezed_annotation/freezed_annotation.dart';
part 'setting_state.freezed.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    @Default(false)
    final bool isLoading,
    @Default(false)
    final bool isLoggedIn

  }) = _SettingState;
}
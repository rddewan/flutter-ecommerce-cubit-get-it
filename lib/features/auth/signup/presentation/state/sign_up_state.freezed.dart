// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpState {
  bool get isSignUp => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isObscure => throw _privateConstructorUsedError;
  bool get isTermsAndCondition => throw _privateConstructorUsedError;
  Map<String, dynamic> get formData => throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {bool isSignUp,
      bool isLoading,
      bool isObscure,
      bool isTermsAndCondition,
      Map<String, dynamic> formData,
      String? errorMsg});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSignUp = null,
    Object? isLoading = null,
    Object? isObscure = null,
    Object? isTermsAndCondition = null,
    Object? formData = null,
    Object? errorMsg = freezed,
  }) {
    return _then(_value.copyWith(
      isSignUp: null == isSignUp
          ? _value.isSignUp
          : isSignUp // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isTermsAndCondition: null == isTermsAndCondition
          ? _value.isTermsAndCondition
          : isTermsAndCondition // ignore: cast_nullable_to_non_nullable
              as bool,
      formData: null == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$_SignUpStateCopyWith(
          _$_SignUpState value, $Res Function(_$_SignUpState) then) =
      __$$_SignUpStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSignUp,
      bool isLoading,
      bool isObscure,
      bool isTermsAndCondition,
      Map<String, dynamic> formData,
      String? errorMsg});
}

/// @nodoc
class __$$_SignUpStateCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$_SignUpState>
    implements _$$_SignUpStateCopyWith<$Res> {
  __$$_SignUpStateCopyWithImpl(
      _$_SignUpState _value, $Res Function(_$_SignUpState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSignUp = null,
    Object? isLoading = null,
    Object? isObscure = null,
    Object? isTermsAndCondition = null,
    Object? formData = null,
    Object? errorMsg = freezed,
  }) {
    return _then(_$_SignUpState(
      isSignUp: null == isSignUp
          ? _value.isSignUp
          : isSignUp // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isTermsAndCondition: null == isTermsAndCondition
          ? _value.isTermsAndCondition
          : isTermsAndCondition // ignore: cast_nullable_to_non_nullable
              as bool,
      formData: null == formData
          ? _value._formData
          : formData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SignUpState implements _SignUpState {
  const _$_SignUpState(
      {this.isSignUp = false,
      this.isLoading = false,
      this.isObscure = true,
      this.isTermsAndCondition = false,
      final Map<String, dynamic> formData = const {},
      this.errorMsg})
      : _formData = formData;

  @override
  @JsonKey()
  final bool isSignUp;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isObscure;
  @override
  @JsonKey()
  final bool isTermsAndCondition;
  final Map<String, dynamic> _formData;
  @override
  @JsonKey()
  Map<String, dynamic> get formData {
    if (_formData is EqualUnmodifiableMapView) return _formData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_formData);
  }

  @override
  final String? errorMsg;

  @override
  String toString() {
    return 'SignUpState(isSignUp: $isSignUp, isLoading: $isLoading, isObscure: $isObscure, isTermsAndCondition: $isTermsAndCondition, formData: $formData, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpState &&
            (identical(other.isSignUp, isSignUp) ||
                other.isSignUp == isSignUp) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure) &&
            (identical(other.isTermsAndCondition, isTermsAndCondition) ||
                other.isTermsAndCondition == isTermsAndCondition) &&
            const DeepCollectionEquality().equals(other._formData, _formData) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isSignUp,
      isLoading,
      isObscure,
      isTermsAndCondition,
      const DeepCollectionEquality().hash(_formData),
      errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      __$$_SignUpStateCopyWithImpl<_$_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
      {final bool isSignUp,
      final bool isLoading,
      final bool isObscure,
      final bool isTermsAndCondition,
      final Map<String, dynamic> formData,
      final String? errorMsg}) = _$_SignUpState;

  @override
  bool get isSignUp;
  @override
  bool get isLoading;
  @override
  bool get isObscure;
  @override
  bool get isTermsAndCondition;
  @override
  Map<String, dynamic> get formData;
  @override
  String? get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

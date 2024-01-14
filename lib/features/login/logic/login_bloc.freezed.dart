// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LoginRequestBody loginRequestBody) login,
    required TResult Function() showPasswordEvent,
    required TResult Function() getUser,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(LoginRequestBody loginRequestBody)? login,
    TResult? Function()? showPasswordEvent,
    TResult? Function()? getUser,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginRequestBody loginRequestBody)? login,
    TResult Function()? showPasswordEvent,
    TResult Function()? getUser,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Login value) login,
    required TResult Function(ShowPasswordEvent value) showPasswordEvent,
    required TResult Function(GetUser value) getUser,
    required TResult Function(Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Login value)? login,
    TResult? Function(ShowPasswordEvent value)? showPasswordEvent,
    TResult? Function(GetUser value)? getUser,
    TResult? Function(Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Login value)? login,
    TResult Function(ShowPasswordEvent value)? showPasswordEvent,
    TResult Function(GetUser value)? getUser,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'LoginEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LoginRequestBody loginRequestBody) login,
    required TResult Function() showPasswordEvent,
    required TResult Function() getUser,
    required TResult Function() logout,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(LoginRequestBody loginRequestBody)? login,
    TResult? Function()? showPasswordEvent,
    TResult? Function()? getUser,
    TResult? Function()? logout,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginRequestBody loginRequestBody)? login,
    TResult Function()? showPasswordEvent,
    TResult Function()? getUser,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Login value) login,
    required TResult Function(ShowPasswordEvent value) showPasswordEvent,
    required TResult Function(GetUser value) getUser,
    required TResult Function(Logout value) logout,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Login value)? login,
    TResult? Function(ShowPasswordEvent value)? showPasswordEvent,
    TResult? Function(GetUser value)? getUser,
    TResult? Function(Logout value)? logout,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Login value)? login,
    TResult Function(ShowPasswordEvent value)? showPasswordEvent,
    TResult Function(GetUser value)? getUser,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LoginEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginRequestBody loginRequestBody});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginRequestBody = null,
  }) {
    return _then(_$LoginImpl(
      loginRequestBody: null == loginRequestBody
          ? _value.loginRequestBody
          : loginRequestBody // ignore: cast_nullable_to_non_nullable
              as LoginRequestBody,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements Login {
  const _$LoginImpl({required this.loginRequestBody});

  @override
  final LoginRequestBody loginRequestBody;

  @override
  String toString() {
    return 'LoginEvent.login(loginRequestBody: $loginRequestBody)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.loginRequestBody, loginRequestBody) ||
                other.loginRequestBody == loginRequestBody));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginRequestBody);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LoginRequestBody loginRequestBody) login,
    required TResult Function() showPasswordEvent,
    required TResult Function() getUser,
    required TResult Function() logout,
  }) {
    return login(loginRequestBody);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(LoginRequestBody loginRequestBody)? login,
    TResult? Function()? showPasswordEvent,
    TResult? Function()? getUser,
    TResult? Function()? logout,
  }) {
    return login?.call(loginRequestBody);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginRequestBody loginRequestBody)? login,
    TResult Function()? showPasswordEvent,
    TResult Function()? getUser,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(loginRequestBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Login value) login,
    required TResult Function(ShowPasswordEvent value) showPasswordEvent,
    required TResult Function(GetUser value) getUser,
    required TResult Function(Logout value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Login value)? login,
    TResult? Function(ShowPasswordEvent value)? showPasswordEvent,
    TResult? Function(GetUser value)? getUser,
    TResult? Function(Logout value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Login value)? login,
    TResult Function(ShowPasswordEvent value)? showPasswordEvent,
    TResult Function(GetUser value)? getUser,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class Login implements LoginEvent {
  const factory Login({required final LoginRequestBody loginRequestBody}) =
      _$LoginImpl;

  LoginRequestBody get loginRequestBody;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowPasswordEventImplCopyWith<$Res> {
  factory _$$ShowPasswordEventImplCopyWith(_$ShowPasswordEventImpl value,
          $Res Function(_$ShowPasswordEventImpl) then) =
      __$$ShowPasswordEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowPasswordEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$ShowPasswordEventImpl>
    implements _$$ShowPasswordEventImplCopyWith<$Res> {
  __$$ShowPasswordEventImplCopyWithImpl(_$ShowPasswordEventImpl _value,
      $Res Function(_$ShowPasswordEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowPasswordEventImpl implements ShowPasswordEvent {
  const _$ShowPasswordEventImpl();

  @override
  String toString() {
    return 'LoginEvent.showPasswordEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowPasswordEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LoginRequestBody loginRequestBody) login,
    required TResult Function() showPasswordEvent,
    required TResult Function() getUser,
    required TResult Function() logout,
  }) {
    return showPasswordEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(LoginRequestBody loginRequestBody)? login,
    TResult? Function()? showPasswordEvent,
    TResult? Function()? getUser,
    TResult? Function()? logout,
  }) {
    return showPasswordEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginRequestBody loginRequestBody)? login,
    TResult Function()? showPasswordEvent,
    TResult Function()? getUser,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (showPasswordEvent != null) {
      return showPasswordEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Login value) login,
    required TResult Function(ShowPasswordEvent value) showPasswordEvent,
    required TResult Function(GetUser value) getUser,
    required TResult Function(Logout value) logout,
  }) {
    return showPasswordEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Login value)? login,
    TResult? Function(ShowPasswordEvent value)? showPasswordEvent,
    TResult? Function(GetUser value)? getUser,
    TResult? Function(Logout value)? logout,
  }) {
    return showPasswordEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Login value)? login,
    TResult Function(ShowPasswordEvent value)? showPasswordEvent,
    TResult Function(GetUser value)? getUser,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (showPasswordEvent != null) {
      return showPasswordEvent(this);
    }
    return orElse();
  }
}

abstract class ShowPasswordEvent implements LoginEvent {
  const factory ShowPasswordEvent() = _$ShowPasswordEventImpl;
}

/// @nodoc
abstract class _$$GetUserImplCopyWith<$Res> {
  factory _$$GetUserImplCopyWith(
          _$GetUserImpl value, $Res Function(_$GetUserImpl) then) =
      __$$GetUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$GetUserImpl>
    implements _$$GetUserImplCopyWith<$Res> {
  __$$GetUserImplCopyWithImpl(
      _$GetUserImpl _value, $Res Function(_$GetUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserImpl implements GetUser {
  const _$GetUserImpl();

  @override
  String toString() {
    return 'LoginEvent.getUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LoginRequestBody loginRequestBody) login,
    required TResult Function() showPasswordEvent,
    required TResult Function() getUser,
    required TResult Function() logout,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(LoginRequestBody loginRequestBody)? login,
    TResult? Function()? showPasswordEvent,
    TResult? Function()? getUser,
    TResult? Function()? logout,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginRequestBody loginRequestBody)? login,
    TResult Function()? showPasswordEvent,
    TResult Function()? getUser,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Login value) login,
    required TResult Function(ShowPasswordEvent value) showPasswordEvent,
    required TResult Function(GetUser value) getUser,
    required TResult Function(Logout value) logout,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Login value)? login,
    TResult? Function(ShowPasswordEvent value)? showPasswordEvent,
    TResult? Function(GetUser value)? getUser,
    TResult? Function(Logout value)? logout,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Login value)? login,
    TResult Function(ShowPasswordEvent value)? showPasswordEvent,
    TResult Function(GetUser value)? getUser,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class GetUser implements LoginEvent {
  const factory GetUser() = _$GetUserImpl;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutImpl implements Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'LoginEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LoginRequestBody loginRequestBody) login,
    required TResult Function() showPasswordEvent,
    required TResult Function() getUser,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(LoginRequestBody loginRequestBody)? login,
    TResult? Function()? showPasswordEvent,
    TResult? Function()? getUser,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginRequestBody loginRequestBody)? login,
    TResult Function()? showPasswordEvent,
    TResult Function()? getUser,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Login value) login,
    required TResult Function(ShowPasswordEvent value) showPasswordEvent,
    required TResult Function(GetUser value) getUser,
    required TResult Function(Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Login value)? login,
    TResult? Function(ShowPasswordEvent value)? showPasswordEvent,
    TResult? Function(GetUser value)? getUser,
    TResult? Function(Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Login value)? login,
    TResult Function(ShowPasswordEvent value)? showPasswordEvent,
    TResult Function(GetUser value)? getUser,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements LoginEvent {
  const factory Logout() = _$LogoutImpl;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingLogin,
    required TResult Function(LoginResponse data) successLogin,
    required TResult Function(String error) errorLogin,
    required TResult Function() showPasswordState,
    required TResult Function() loadingGetUser,
    required TResult Function(LoginResponse data) successGetUser,
    required TResult Function(String error) errorGetUser,
    required TResult Function() loadingLogout,
    required TResult Function(LoginResponse data) successLogout,
    required TResult Function(String error) errorLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingLogin,
    TResult? Function(LoginResponse data)? successLogin,
    TResult? Function(String error)? errorLogin,
    TResult? Function()? showPasswordState,
    TResult? Function()? loadingGetUser,
    TResult? Function(LoginResponse data)? successGetUser,
    TResult? Function(String error)? errorGetUser,
    TResult? Function()? loadingLogout,
    TResult? Function(LoginResponse data)? successLogout,
    TResult? Function(String error)? errorLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingLogin,
    TResult Function(LoginResponse data)? successLogin,
    TResult Function(String error)? errorLogin,
    TResult Function()? showPasswordState,
    TResult Function()? loadingGetUser,
    TResult Function(LoginResponse data)? successGetUser,
    TResult Function(String error)? errorGetUser,
    TResult Function()? loadingLogout,
    TResult Function(LoginResponse data)? successLogout,
    TResult Function(String error)? errorLogout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingLogin value) loadingLogin,
    required TResult Function(SuccessLogin value) successLogin,
    required TResult Function(ErrorLogin value) errorLogin,
    required TResult Function(ShowPasswordState value) showPasswordState,
    required TResult Function(LoadingGetUser value) loadingGetUser,
    required TResult Function(SuccessGetUser value) successGetUser,
    required TResult Function(ErrorGetUser value) errorGetUser,
    required TResult Function(LoadingLogout value) loadingLogout,
    required TResult Function(SuccessLogout value) successLogout,
    required TResult Function(ErrorLogout value) errorLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingLogin value)? loadingLogin,
    TResult? Function(SuccessLogin value)? successLogin,
    TResult? Function(ErrorLogin value)? errorLogin,
    TResult? Function(ShowPasswordState value)? showPasswordState,
    TResult? Function(LoadingGetUser value)? loadingGetUser,
    TResult? Function(SuccessGetUser value)? successGetUser,
    TResult? Function(ErrorGetUser value)? errorGetUser,
    TResult? Function(LoadingLogout value)? loadingLogout,
    TResult? Function(SuccessLogout value)? successLogout,
    TResult? Function(ErrorLogout value)? errorLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingLogin value)? loadingLogin,
    TResult Function(SuccessLogin value)? successLogin,
    TResult Function(ErrorLogin value)? errorLogin,
    TResult Function(ShowPasswordState value)? showPasswordState,
    TResult Function(LoadingGetUser value)? loadingGetUser,
    TResult Function(SuccessGetUser value)? successGetUser,
    TResult Function(ErrorGetUser value)? errorGetUser,
    TResult Function(LoadingLogout value)? loadingLogout,
    TResult Function(SuccessLogout value)? successLogout,
    TResult Function(ErrorLogout value)? errorLogout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingLogin,
    required TResult Function(LoginResponse data) successLogin,
    required TResult Function(String error) errorLogin,
    required TResult Function() showPasswordState,
    required TResult Function() loadingGetUser,
    required TResult Function(LoginResponse data) successGetUser,
    required TResult Function(String error) errorGetUser,
    required TResult Function() loadingLogout,
    required TResult Function(LoginResponse data) successLogout,
    required TResult Function(String error) errorLogout,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingLogin,
    TResult? Function(LoginResponse data)? successLogin,
    TResult? Function(String error)? errorLogin,
    TResult? Function()? showPasswordState,
    TResult? Function()? loadingGetUser,
    TResult? Function(LoginResponse data)? successGetUser,
    TResult? Function(String error)? errorGetUser,
    TResult? Function()? loadingLogout,
    TResult? Function(LoginResponse data)? successLogout,
    TResult? Function(String error)? errorLogout,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingLogin,
    TResult Function(LoginResponse data)? successLogin,
    TResult Function(String error)? errorLogin,
    TResult Function()? showPasswordState,
    TResult Function()? loadingGetUser,
    TResult Function(LoginResponse data)? successGetUser,
    TResult Function(String error)? errorGetUser,
    TResult Function()? loadingLogout,
    TResult Function(LoginResponse data)? successLogout,
    TResult Function(String error)? errorLogout,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingLogin value) loadingLogin,
    required TResult Function(SuccessLogin value) successLogin,
    required TResult Function(ErrorLogin value) errorLogin,
    required TResult Function(ShowPasswordState value) showPasswordState,
    required TResult Function(LoadingGetUser value) loadingGetUser,
    required TResult Function(SuccessGetUser value) successGetUser,
    required TResult Function(ErrorGetUser value) errorGetUser,
    required TResult Function(LoadingLogout value) loadingLogout,
    required TResult Function(SuccessLogout value) successLogout,
    required TResult Function(ErrorLogout value) errorLogout,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingLogin value)? loadingLogin,
    TResult? Function(SuccessLogin value)? successLogin,
    TResult? Function(ErrorLogin value)? errorLogin,
    TResult? Function(ShowPasswordState value)? showPasswordState,
    TResult? Function(LoadingGetUser value)? loadingGetUser,
    TResult? Function(SuccessGetUser value)? successGetUser,
    TResult? Function(ErrorGetUser value)? errorGetUser,
    TResult? Function(LoadingLogout value)? loadingLogout,
    TResult? Function(SuccessLogout value)? successLogout,
    TResult? Function(ErrorLogout value)? errorLogout,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingLogin value)? loadingLogin,
    TResult Function(SuccessLogin value)? successLogin,
    TResult Function(ErrorLogin value)? errorLogin,
    TResult Function(ShowPasswordState value)? showPasswordState,
    TResult Function(LoadingGetUser value)? loadingGetUser,
    TResult Function(SuccessGetUser value)? successGetUser,
    TResult Function(ErrorGetUser value)? errorGetUser,
    TResult Function(LoadingLogout value)? loadingLogout,
    TResult Function(SuccessLogout value)? successLogout,
    TResult Function(ErrorLogout value)? errorLogout,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingLoginImplCopyWith<$Res> {
  factory _$$LoadingLoginImplCopyWith(
          _$LoadingLoginImpl value, $Res Function(_$LoadingLoginImpl) then) =
      __$$LoadingLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingLoginImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoadingLoginImpl>
    implements _$$LoadingLoginImplCopyWith<$Res> {
  __$$LoadingLoginImplCopyWithImpl(
      _$LoadingLoginImpl _value, $Res Function(_$LoadingLoginImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingLoginImpl implements LoadingLogin {
  const _$LoadingLoginImpl();

  @override
  String toString() {
    return 'LoginState.loadingLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingLoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingLogin,
    required TResult Function(LoginResponse data) successLogin,
    required TResult Function(String error) errorLogin,
    required TResult Function() showPasswordState,
    required TResult Function() loadingGetUser,
    required TResult Function(LoginResponse data) successGetUser,
    required TResult Function(String error) errorGetUser,
    required TResult Function() loadingLogout,
    required TResult Function(LoginResponse data) successLogout,
    required TResult Function(String error) errorLogout,
  }) {
    return loadingLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingLogin,
    TResult? Function(LoginResponse data)? successLogin,
    TResult? Function(String error)? errorLogin,
    TResult? Function()? showPasswordState,
    TResult? Function()? loadingGetUser,
    TResult? Function(LoginResponse data)? successGetUser,
    TResult? Function(String error)? errorGetUser,
    TResult? Function()? loadingLogout,
    TResult? Function(LoginResponse data)? successLogout,
    TResult? Function(String error)? errorLogout,
  }) {
    return loadingLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingLogin,
    TResult Function(LoginResponse data)? successLogin,
    TResult Function(String error)? errorLogin,
    TResult Function()? showPasswordState,
    TResult Function()? loadingGetUser,
    TResult Function(LoginResponse data)? successGetUser,
    TResult Function(String error)? errorGetUser,
    TResult Function()? loadingLogout,
    TResult Function(LoginResponse data)? successLogout,
    TResult Function(String error)? errorLogout,
    required TResult orElse(),
  }) {
    if (loadingLogin != null) {
      return loadingLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingLogin value) loadingLogin,
    required TResult Function(SuccessLogin value) successLogin,
    required TResult Function(ErrorLogin value) errorLogin,
    required TResult Function(ShowPasswordState value) showPasswordState,
    required TResult Function(LoadingGetUser value) loadingGetUser,
    required TResult Function(SuccessGetUser value) successGetUser,
    required TResult Function(ErrorGetUser value) errorGetUser,
    required TResult Function(LoadingLogout value) loadingLogout,
    required TResult Function(SuccessLogout value) successLogout,
    required TResult Function(ErrorLogout value) errorLogout,
  }) {
    return loadingLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingLogin value)? loadingLogin,
    TResult? Function(SuccessLogin value)? successLogin,
    TResult? Function(ErrorLogin value)? errorLogin,
    TResult? Function(ShowPasswordState value)? showPasswordState,
    TResult? Function(LoadingGetUser value)? loadingGetUser,
    TResult? Function(SuccessGetUser value)? successGetUser,
    TResult? Function(ErrorGetUser value)? errorGetUser,
    TResult? Function(LoadingLogout value)? loadingLogout,
    TResult? Function(SuccessLogout value)? successLogout,
    TResult? Function(ErrorLogout value)? errorLogout,
  }) {
    return loadingLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingLogin value)? loadingLogin,
    TResult Function(SuccessLogin value)? successLogin,
    TResult Function(ErrorLogin value)? errorLogin,
    TResult Function(ShowPasswordState value)? showPasswordState,
    TResult Function(LoadingGetUser value)? loadingGetUser,
    TResult Function(SuccessGetUser value)? successGetUser,
    TResult Function(ErrorGetUser value)? errorGetUser,
    TResult Function(LoadingLogout value)? loadingLogout,
    TResult Function(SuccessLogout value)? successLogout,
    TResult Function(ErrorLogout value)? errorLogout,
    required TResult orElse(),
  }) {
    if (loadingLogin != null) {
      return loadingLogin(this);
    }
    return orElse();
  }
}

abstract class LoadingLogin implements LoginState {
  const factory LoadingLogin() = _$LoadingLoginImpl;
}

/// @nodoc
abstract class _$$SuccessLoginImplCopyWith<$Res> {
  factory _$$SuccessLoginImplCopyWith(
          _$SuccessLoginImpl value, $Res Function(_$SuccessLoginImpl) then) =
      __$$SuccessLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginResponse data});
}

/// @nodoc
class __$$SuccessLoginImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$SuccessLoginImpl>
    implements _$$SuccessLoginImplCopyWith<$Res> {
  __$$SuccessLoginImplCopyWithImpl(
      _$SuccessLoginImpl _value, $Res Function(_$SuccessLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessLoginImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginResponse,
    ));
  }
}

/// @nodoc

class _$SuccessLoginImpl implements SuccessLogin {
  const _$SuccessLoginImpl(this.data);

  @override
  final LoginResponse data;

  @override
  String toString() {
    return 'LoginState.successLogin(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessLoginImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessLoginImplCopyWith<_$SuccessLoginImpl> get copyWith =>
      __$$SuccessLoginImplCopyWithImpl<_$SuccessLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingLogin,
    required TResult Function(LoginResponse data) successLogin,
    required TResult Function(String error) errorLogin,
    required TResult Function() showPasswordState,
    required TResult Function() loadingGetUser,
    required TResult Function(LoginResponse data) successGetUser,
    required TResult Function(String error) errorGetUser,
    required TResult Function() loadingLogout,
    required TResult Function(LoginResponse data) successLogout,
    required TResult Function(String error) errorLogout,
  }) {
    return successLogin(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingLogin,
    TResult? Function(LoginResponse data)? successLogin,
    TResult? Function(String error)? errorLogin,
    TResult? Function()? showPasswordState,
    TResult? Function()? loadingGetUser,
    TResult? Function(LoginResponse data)? successGetUser,
    TResult? Function(String error)? errorGetUser,
    TResult? Function()? loadingLogout,
    TResult? Function(LoginResponse data)? successLogout,
    TResult? Function(String error)? errorLogout,
  }) {
    return successLogin?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingLogin,
    TResult Function(LoginResponse data)? successLogin,
    TResult Function(String error)? errorLogin,
    TResult Function()? showPasswordState,
    TResult Function()? loadingGetUser,
    TResult Function(LoginResponse data)? successGetUser,
    TResult Function(String error)? errorGetUser,
    TResult Function()? loadingLogout,
    TResult Function(LoginResponse data)? successLogout,
    TResult Function(String error)? errorLogout,
    required TResult orElse(),
  }) {
    if (successLogin != null) {
      return successLogin(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingLogin value) loadingLogin,
    required TResult Function(SuccessLogin value) successLogin,
    required TResult Function(ErrorLogin value) errorLogin,
    required TResult Function(ShowPasswordState value) showPasswordState,
    required TResult Function(LoadingGetUser value) loadingGetUser,
    required TResult Function(SuccessGetUser value) successGetUser,
    required TResult Function(ErrorGetUser value) errorGetUser,
    required TResult Function(LoadingLogout value) loadingLogout,
    required TResult Function(SuccessLogout value) successLogout,
    required TResult Function(ErrorLogout value) errorLogout,
  }) {
    return successLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingLogin value)? loadingLogin,
    TResult? Function(SuccessLogin value)? successLogin,
    TResult? Function(ErrorLogin value)? errorLogin,
    TResult? Function(ShowPasswordState value)? showPasswordState,
    TResult? Function(LoadingGetUser value)? loadingGetUser,
    TResult? Function(SuccessGetUser value)? successGetUser,
    TResult? Function(ErrorGetUser value)? errorGetUser,
    TResult? Function(LoadingLogout value)? loadingLogout,
    TResult? Function(SuccessLogout value)? successLogout,
    TResult? Function(ErrorLogout value)? errorLogout,
  }) {
    return successLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingLogin value)? loadingLogin,
    TResult Function(SuccessLogin value)? successLogin,
    TResult Function(ErrorLogin value)? errorLogin,
    TResult Function(ShowPasswordState value)? showPasswordState,
    TResult Function(LoadingGetUser value)? loadingGetUser,
    TResult Function(SuccessGetUser value)? successGetUser,
    TResult Function(ErrorGetUser value)? errorGetUser,
    TResult Function(LoadingLogout value)? loadingLogout,
    TResult Function(SuccessLogout value)? successLogout,
    TResult Function(ErrorLogout value)? errorLogout,
    required TResult orElse(),
  }) {
    if (successLogin != null) {
      return successLogin(this);
    }
    return orElse();
  }
}

abstract class SuccessLogin implements LoginState {
  const factory SuccessLogin(final LoginResponse data) = _$SuccessLoginImpl;

  LoginResponse get data;
  @JsonKey(ignore: true)
  _$$SuccessLoginImplCopyWith<_$SuccessLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorLoginImplCopyWith<$Res> {
  factory _$$ErrorLoginImplCopyWith(
          _$ErrorLoginImpl value, $Res Function(_$ErrorLoginImpl) then) =
      __$$ErrorLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorLoginImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ErrorLoginImpl>
    implements _$$ErrorLoginImplCopyWith<$Res> {
  __$$ErrorLoginImplCopyWithImpl(
      _$ErrorLoginImpl _value, $Res Function(_$ErrorLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorLoginImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorLoginImpl implements ErrorLogin {
  const _$ErrorLoginImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'LoginState.errorLogin(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorLoginImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorLoginImplCopyWith<_$ErrorLoginImpl> get copyWith =>
      __$$ErrorLoginImplCopyWithImpl<_$ErrorLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingLogin,
    required TResult Function(LoginResponse data) successLogin,
    required TResult Function(String error) errorLogin,
    required TResult Function() showPasswordState,
    required TResult Function() loadingGetUser,
    required TResult Function(LoginResponse data) successGetUser,
    required TResult Function(String error) errorGetUser,
    required TResult Function() loadingLogout,
    required TResult Function(LoginResponse data) successLogout,
    required TResult Function(String error) errorLogout,
  }) {
    return errorLogin(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingLogin,
    TResult? Function(LoginResponse data)? successLogin,
    TResult? Function(String error)? errorLogin,
    TResult? Function()? showPasswordState,
    TResult? Function()? loadingGetUser,
    TResult? Function(LoginResponse data)? successGetUser,
    TResult? Function(String error)? errorGetUser,
    TResult? Function()? loadingLogout,
    TResult? Function(LoginResponse data)? successLogout,
    TResult? Function(String error)? errorLogout,
  }) {
    return errorLogin?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingLogin,
    TResult Function(LoginResponse data)? successLogin,
    TResult Function(String error)? errorLogin,
    TResult Function()? showPasswordState,
    TResult Function()? loadingGetUser,
    TResult Function(LoginResponse data)? successGetUser,
    TResult Function(String error)? errorGetUser,
    TResult Function()? loadingLogout,
    TResult Function(LoginResponse data)? successLogout,
    TResult Function(String error)? errorLogout,
    required TResult orElse(),
  }) {
    if (errorLogin != null) {
      return errorLogin(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingLogin value) loadingLogin,
    required TResult Function(SuccessLogin value) successLogin,
    required TResult Function(ErrorLogin value) errorLogin,
    required TResult Function(ShowPasswordState value) showPasswordState,
    required TResult Function(LoadingGetUser value) loadingGetUser,
    required TResult Function(SuccessGetUser value) successGetUser,
    required TResult Function(ErrorGetUser value) errorGetUser,
    required TResult Function(LoadingLogout value) loadingLogout,
    required TResult Function(SuccessLogout value) successLogout,
    required TResult Function(ErrorLogout value) errorLogout,
  }) {
    return errorLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingLogin value)? loadingLogin,
    TResult? Function(SuccessLogin value)? successLogin,
    TResult? Function(ErrorLogin value)? errorLogin,
    TResult? Function(ShowPasswordState value)? showPasswordState,
    TResult? Function(LoadingGetUser value)? loadingGetUser,
    TResult? Function(SuccessGetUser value)? successGetUser,
    TResult? Function(ErrorGetUser value)? errorGetUser,
    TResult? Function(LoadingLogout value)? loadingLogout,
    TResult? Function(SuccessLogout value)? successLogout,
    TResult? Function(ErrorLogout value)? errorLogout,
  }) {
    return errorLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingLogin value)? loadingLogin,
    TResult Function(SuccessLogin value)? successLogin,
    TResult Function(ErrorLogin value)? errorLogin,
    TResult Function(ShowPasswordState value)? showPasswordState,
    TResult Function(LoadingGetUser value)? loadingGetUser,
    TResult Function(SuccessGetUser value)? successGetUser,
    TResult Function(ErrorGetUser value)? errorGetUser,
    TResult Function(LoadingLogout value)? loadingLogout,
    TResult Function(SuccessLogout value)? successLogout,
    TResult Function(ErrorLogout value)? errorLogout,
    required TResult orElse(),
  }) {
    if (errorLogin != null) {
      return errorLogin(this);
    }
    return orElse();
  }
}

abstract class ErrorLogin implements LoginState {
  const factory ErrorLogin({required final String error}) = _$ErrorLoginImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorLoginImplCopyWith<_$ErrorLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowPasswordStateImplCopyWith<$Res> {
  factory _$$ShowPasswordStateImplCopyWith(_$ShowPasswordStateImpl value,
          $Res Function(_$ShowPasswordStateImpl) then) =
      __$$ShowPasswordStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowPasswordStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ShowPasswordStateImpl>
    implements _$$ShowPasswordStateImplCopyWith<$Res> {
  __$$ShowPasswordStateImplCopyWithImpl(_$ShowPasswordStateImpl _value,
      $Res Function(_$ShowPasswordStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowPasswordStateImpl implements ShowPasswordState {
  const _$ShowPasswordStateImpl();

  @override
  String toString() {
    return 'LoginState.showPasswordState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowPasswordStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingLogin,
    required TResult Function(LoginResponse data) successLogin,
    required TResult Function(String error) errorLogin,
    required TResult Function() showPasswordState,
    required TResult Function() loadingGetUser,
    required TResult Function(LoginResponse data) successGetUser,
    required TResult Function(String error) errorGetUser,
    required TResult Function() loadingLogout,
    required TResult Function(LoginResponse data) successLogout,
    required TResult Function(String error) errorLogout,
  }) {
    return showPasswordState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingLogin,
    TResult? Function(LoginResponse data)? successLogin,
    TResult? Function(String error)? errorLogin,
    TResult? Function()? showPasswordState,
    TResult? Function()? loadingGetUser,
    TResult? Function(LoginResponse data)? successGetUser,
    TResult? Function(String error)? errorGetUser,
    TResult? Function()? loadingLogout,
    TResult? Function(LoginResponse data)? successLogout,
    TResult? Function(String error)? errorLogout,
  }) {
    return showPasswordState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingLogin,
    TResult Function(LoginResponse data)? successLogin,
    TResult Function(String error)? errorLogin,
    TResult Function()? showPasswordState,
    TResult Function()? loadingGetUser,
    TResult Function(LoginResponse data)? successGetUser,
    TResult Function(String error)? errorGetUser,
    TResult Function()? loadingLogout,
    TResult Function(LoginResponse data)? successLogout,
    TResult Function(String error)? errorLogout,
    required TResult orElse(),
  }) {
    if (showPasswordState != null) {
      return showPasswordState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingLogin value) loadingLogin,
    required TResult Function(SuccessLogin value) successLogin,
    required TResult Function(ErrorLogin value) errorLogin,
    required TResult Function(ShowPasswordState value) showPasswordState,
    required TResult Function(LoadingGetUser value) loadingGetUser,
    required TResult Function(SuccessGetUser value) successGetUser,
    required TResult Function(ErrorGetUser value) errorGetUser,
    required TResult Function(LoadingLogout value) loadingLogout,
    required TResult Function(SuccessLogout value) successLogout,
    required TResult Function(ErrorLogout value) errorLogout,
  }) {
    return showPasswordState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingLogin value)? loadingLogin,
    TResult? Function(SuccessLogin value)? successLogin,
    TResult? Function(ErrorLogin value)? errorLogin,
    TResult? Function(ShowPasswordState value)? showPasswordState,
    TResult? Function(LoadingGetUser value)? loadingGetUser,
    TResult? Function(SuccessGetUser value)? successGetUser,
    TResult? Function(ErrorGetUser value)? errorGetUser,
    TResult? Function(LoadingLogout value)? loadingLogout,
    TResult? Function(SuccessLogout value)? successLogout,
    TResult? Function(ErrorLogout value)? errorLogout,
  }) {
    return showPasswordState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingLogin value)? loadingLogin,
    TResult Function(SuccessLogin value)? successLogin,
    TResult Function(ErrorLogin value)? errorLogin,
    TResult Function(ShowPasswordState value)? showPasswordState,
    TResult Function(LoadingGetUser value)? loadingGetUser,
    TResult Function(SuccessGetUser value)? successGetUser,
    TResult Function(ErrorGetUser value)? errorGetUser,
    TResult Function(LoadingLogout value)? loadingLogout,
    TResult Function(SuccessLogout value)? successLogout,
    TResult Function(ErrorLogout value)? errorLogout,
    required TResult orElse(),
  }) {
    if (showPasswordState != null) {
      return showPasswordState(this);
    }
    return orElse();
  }
}

abstract class ShowPasswordState implements LoginState {
  const factory ShowPasswordState() = _$ShowPasswordStateImpl;
}

/// @nodoc
abstract class _$$LoadingGetUserImplCopyWith<$Res> {
  factory _$$LoadingGetUserImplCopyWith(_$LoadingGetUserImpl value,
          $Res Function(_$LoadingGetUserImpl) then) =
      __$$LoadingGetUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingGetUserImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoadingGetUserImpl>
    implements _$$LoadingGetUserImplCopyWith<$Res> {
  __$$LoadingGetUserImplCopyWithImpl(
      _$LoadingGetUserImpl _value, $Res Function(_$LoadingGetUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingGetUserImpl implements LoadingGetUser {
  const _$LoadingGetUserImpl();

  @override
  String toString() {
    return 'LoginState.loadingGetUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingGetUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingLogin,
    required TResult Function(LoginResponse data) successLogin,
    required TResult Function(String error) errorLogin,
    required TResult Function() showPasswordState,
    required TResult Function() loadingGetUser,
    required TResult Function(LoginResponse data) successGetUser,
    required TResult Function(String error) errorGetUser,
    required TResult Function() loadingLogout,
    required TResult Function(LoginResponse data) successLogout,
    required TResult Function(String error) errorLogout,
  }) {
    return loadingGetUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingLogin,
    TResult? Function(LoginResponse data)? successLogin,
    TResult? Function(String error)? errorLogin,
    TResult? Function()? showPasswordState,
    TResult? Function()? loadingGetUser,
    TResult? Function(LoginResponse data)? successGetUser,
    TResult? Function(String error)? errorGetUser,
    TResult? Function()? loadingLogout,
    TResult? Function(LoginResponse data)? successLogout,
    TResult? Function(String error)? errorLogout,
  }) {
    return loadingGetUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingLogin,
    TResult Function(LoginResponse data)? successLogin,
    TResult Function(String error)? errorLogin,
    TResult Function()? showPasswordState,
    TResult Function()? loadingGetUser,
    TResult Function(LoginResponse data)? successGetUser,
    TResult Function(String error)? errorGetUser,
    TResult Function()? loadingLogout,
    TResult Function(LoginResponse data)? successLogout,
    TResult Function(String error)? errorLogout,
    required TResult orElse(),
  }) {
    if (loadingGetUser != null) {
      return loadingGetUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingLogin value) loadingLogin,
    required TResult Function(SuccessLogin value) successLogin,
    required TResult Function(ErrorLogin value) errorLogin,
    required TResult Function(ShowPasswordState value) showPasswordState,
    required TResult Function(LoadingGetUser value) loadingGetUser,
    required TResult Function(SuccessGetUser value) successGetUser,
    required TResult Function(ErrorGetUser value) errorGetUser,
    required TResult Function(LoadingLogout value) loadingLogout,
    required TResult Function(SuccessLogout value) successLogout,
    required TResult Function(ErrorLogout value) errorLogout,
  }) {
    return loadingGetUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingLogin value)? loadingLogin,
    TResult? Function(SuccessLogin value)? successLogin,
    TResult? Function(ErrorLogin value)? errorLogin,
    TResult? Function(ShowPasswordState value)? showPasswordState,
    TResult? Function(LoadingGetUser value)? loadingGetUser,
    TResult? Function(SuccessGetUser value)? successGetUser,
    TResult? Function(ErrorGetUser value)? errorGetUser,
    TResult? Function(LoadingLogout value)? loadingLogout,
    TResult? Function(SuccessLogout value)? successLogout,
    TResult? Function(ErrorLogout value)? errorLogout,
  }) {
    return loadingGetUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingLogin value)? loadingLogin,
    TResult Function(SuccessLogin value)? successLogin,
    TResult Function(ErrorLogin value)? errorLogin,
    TResult Function(ShowPasswordState value)? showPasswordState,
    TResult Function(LoadingGetUser value)? loadingGetUser,
    TResult Function(SuccessGetUser value)? successGetUser,
    TResult Function(ErrorGetUser value)? errorGetUser,
    TResult Function(LoadingLogout value)? loadingLogout,
    TResult Function(SuccessLogout value)? successLogout,
    TResult Function(ErrorLogout value)? errorLogout,
    required TResult orElse(),
  }) {
    if (loadingGetUser != null) {
      return loadingGetUser(this);
    }
    return orElse();
  }
}

abstract class LoadingGetUser implements LoginState {
  const factory LoadingGetUser() = _$LoadingGetUserImpl;
}

/// @nodoc
abstract class _$$SuccessGetUserImplCopyWith<$Res> {
  factory _$$SuccessGetUserImplCopyWith(_$SuccessGetUserImpl value,
          $Res Function(_$SuccessGetUserImpl) then) =
      __$$SuccessGetUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginResponse data});
}

/// @nodoc
class __$$SuccessGetUserImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$SuccessGetUserImpl>
    implements _$$SuccessGetUserImplCopyWith<$Res> {
  __$$SuccessGetUserImplCopyWithImpl(
      _$SuccessGetUserImpl _value, $Res Function(_$SuccessGetUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessGetUserImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginResponse,
    ));
  }
}

/// @nodoc

class _$SuccessGetUserImpl implements SuccessGetUser {
  const _$SuccessGetUserImpl(this.data);

  @override
  final LoginResponse data;

  @override
  String toString() {
    return 'LoginState.successGetUser(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessGetUserImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessGetUserImplCopyWith<_$SuccessGetUserImpl> get copyWith =>
      __$$SuccessGetUserImplCopyWithImpl<_$SuccessGetUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingLogin,
    required TResult Function(LoginResponse data) successLogin,
    required TResult Function(String error) errorLogin,
    required TResult Function() showPasswordState,
    required TResult Function() loadingGetUser,
    required TResult Function(LoginResponse data) successGetUser,
    required TResult Function(String error) errorGetUser,
    required TResult Function() loadingLogout,
    required TResult Function(LoginResponse data) successLogout,
    required TResult Function(String error) errorLogout,
  }) {
    return successGetUser(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingLogin,
    TResult? Function(LoginResponse data)? successLogin,
    TResult? Function(String error)? errorLogin,
    TResult? Function()? showPasswordState,
    TResult? Function()? loadingGetUser,
    TResult? Function(LoginResponse data)? successGetUser,
    TResult? Function(String error)? errorGetUser,
    TResult? Function()? loadingLogout,
    TResult? Function(LoginResponse data)? successLogout,
    TResult? Function(String error)? errorLogout,
  }) {
    return successGetUser?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingLogin,
    TResult Function(LoginResponse data)? successLogin,
    TResult Function(String error)? errorLogin,
    TResult Function()? showPasswordState,
    TResult Function()? loadingGetUser,
    TResult Function(LoginResponse data)? successGetUser,
    TResult Function(String error)? errorGetUser,
    TResult Function()? loadingLogout,
    TResult Function(LoginResponse data)? successLogout,
    TResult Function(String error)? errorLogout,
    required TResult orElse(),
  }) {
    if (successGetUser != null) {
      return successGetUser(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingLogin value) loadingLogin,
    required TResult Function(SuccessLogin value) successLogin,
    required TResult Function(ErrorLogin value) errorLogin,
    required TResult Function(ShowPasswordState value) showPasswordState,
    required TResult Function(LoadingGetUser value) loadingGetUser,
    required TResult Function(SuccessGetUser value) successGetUser,
    required TResult Function(ErrorGetUser value) errorGetUser,
    required TResult Function(LoadingLogout value) loadingLogout,
    required TResult Function(SuccessLogout value) successLogout,
    required TResult Function(ErrorLogout value) errorLogout,
  }) {
    return successGetUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingLogin value)? loadingLogin,
    TResult? Function(SuccessLogin value)? successLogin,
    TResult? Function(ErrorLogin value)? errorLogin,
    TResult? Function(ShowPasswordState value)? showPasswordState,
    TResult? Function(LoadingGetUser value)? loadingGetUser,
    TResult? Function(SuccessGetUser value)? successGetUser,
    TResult? Function(ErrorGetUser value)? errorGetUser,
    TResult? Function(LoadingLogout value)? loadingLogout,
    TResult? Function(SuccessLogout value)? successLogout,
    TResult? Function(ErrorLogout value)? errorLogout,
  }) {
    return successGetUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingLogin value)? loadingLogin,
    TResult Function(SuccessLogin value)? successLogin,
    TResult Function(ErrorLogin value)? errorLogin,
    TResult Function(ShowPasswordState value)? showPasswordState,
    TResult Function(LoadingGetUser value)? loadingGetUser,
    TResult Function(SuccessGetUser value)? successGetUser,
    TResult Function(ErrorGetUser value)? errorGetUser,
    TResult Function(LoadingLogout value)? loadingLogout,
    TResult Function(SuccessLogout value)? successLogout,
    TResult Function(ErrorLogout value)? errorLogout,
    required TResult orElse(),
  }) {
    if (successGetUser != null) {
      return successGetUser(this);
    }
    return orElse();
  }
}

abstract class SuccessGetUser implements LoginState {
  const factory SuccessGetUser(final LoginResponse data) = _$SuccessGetUserImpl;

  LoginResponse get data;
  @JsonKey(ignore: true)
  _$$SuccessGetUserImplCopyWith<_$SuccessGetUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorGetUserImplCopyWith<$Res> {
  factory _$$ErrorGetUserImplCopyWith(
          _$ErrorGetUserImpl value, $Res Function(_$ErrorGetUserImpl) then) =
      __$$ErrorGetUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorGetUserImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ErrorGetUserImpl>
    implements _$$ErrorGetUserImplCopyWith<$Res> {
  __$$ErrorGetUserImplCopyWithImpl(
      _$ErrorGetUserImpl _value, $Res Function(_$ErrorGetUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorGetUserImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorGetUserImpl implements ErrorGetUser {
  const _$ErrorGetUserImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'LoginState.errorGetUser(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorGetUserImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorGetUserImplCopyWith<_$ErrorGetUserImpl> get copyWith =>
      __$$ErrorGetUserImplCopyWithImpl<_$ErrorGetUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingLogin,
    required TResult Function(LoginResponse data) successLogin,
    required TResult Function(String error) errorLogin,
    required TResult Function() showPasswordState,
    required TResult Function() loadingGetUser,
    required TResult Function(LoginResponse data) successGetUser,
    required TResult Function(String error) errorGetUser,
    required TResult Function() loadingLogout,
    required TResult Function(LoginResponse data) successLogout,
    required TResult Function(String error) errorLogout,
  }) {
    return errorGetUser(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingLogin,
    TResult? Function(LoginResponse data)? successLogin,
    TResult? Function(String error)? errorLogin,
    TResult? Function()? showPasswordState,
    TResult? Function()? loadingGetUser,
    TResult? Function(LoginResponse data)? successGetUser,
    TResult? Function(String error)? errorGetUser,
    TResult? Function()? loadingLogout,
    TResult? Function(LoginResponse data)? successLogout,
    TResult? Function(String error)? errorLogout,
  }) {
    return errorGetUser?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingLogin,
    TResult Function(LoginResponse data)? successLogin,
    TResult Function(String error)? errorLogin,
    TResult Function()? showPasswordState,
    TResult Function()? loadingGetUser,
    TResult Function(LoginResponse data)? successGetUser,
    TResult Function(String error)? errorGetUser,
    TResult Function()? loadingLogout,
    TResult Function(LoginResponse data)? successLogout,
    TResult Function(String error)? errorLogout,
    required TResult orElse(),
  }) {
    if (errorGetUser != null) {
      return errorGetUser(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingLogin value) loadingLogin,
    required TResult Function(SuccessLogin value) successLogin,
    required TResult Function(ErrorLogin value) errorLogin,
    required TResult Function(ShowPasswordState value) showPasswordState,
    required TResult Function(LoadingGetUser value) loadingGetUser,
    required TResult Function(SuccessGetUser value) successGetUser,
    required TResult Function(ErrorGetUser value) errorGetUser,
    required TResult Function(LoadingLogout value) loadingLogout,
    required TResult Function(SuccessLogout value) successLogout,
    required TResult Function(ErrorLogout value) errorLogout,
  }) {
    return errorGetUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingLogin value)? loadingLogin,
    TResult? Function(SuccessLogin value)? successLogin,
    TResult? Function(ErrorLogin value)? errorLogin,
    TResult? Function(ShowPasswordState value)? showPasswordState,
    TResult? Function(LoadingGetUser value)? loadingGetUser,
    TResult? Function(SuccessGetUser value)? successGetUser,
    TResult? Function(ErrorGetUser value)? errorGetUser,
    TResult? Function(LoadingLogout value)? loadingLogout,
    TResult? Function(SuccessLogout value)? successLogout,
    TResult? Function(ErrorLogout value)? errorLogout,
  }) {
    return errorGetUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingLogin value)? loadingLogin,
    TResult Function(SuccessLogin value)? successLogin,
    TResult Function(ErrorLogin value)? errorLogin,
    TResult Function(ShowPasswordState value)? showPasswordState,
    TResult Function(LoadingGetUser value)? loadingGetUser,
    TResult Function(SuccessGetUser value)? successGetUser,
    TResult Function(ErrorGetUser value)? errorGetUser,
    TResult Function(LoadingLogout value)? loadingLogout,
    TResult Function(SuccessLogout value)? successLogout,
    TResult Function(ErrorLogout value)? errorLogout,
    required TResult orElse(),
  }) {
    if (errorGetUser != null) {
      return errorGetUser(this);
    }
    return orElse();
  }
}

abstract class ErrorGetUser implements LoginState {
  const factory ErrorGetUser({required final String error}) =
      _$ErrorGetUserImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorGetUserImplCopyWith<_$ErrorGetUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingLogoutImplCopyWith<$Res> {
  factory _$$LoadingLogoutImplCopyWith(
          _$LoadingLogoutImpl value, $Res Function(_$LoadingLogoutImpl) then) =
      __$$LoadingLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingLogoutImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoadingLogoutImpl>
    implements _$$LoadingLogoutImplCopyWith<$Res> {
  __$$LoadingLogoutImplCopyWithImpl(
      _$LoadingLogoutImpl _value, $Res Function(_$LoadingLogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingLogoutImpl implements LoadingLogout {
  const _$LoadingLogoutImpl();

  @override
  String toString() {
    return 'LoginState.loadingLogout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingLogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingLogin,
    required TResult Function(LoginResponse data) successLogin,
    required TResult Function(String error) errorLogin,
    required TResult Function() showPasswordState,
    required TResult Function() loadingGetUser,
    required TResult Function(LoginResponse data) successGetUser,
    required TResult Function(String error) errorGetUser,
    required TResult Function() loadingLogout,
    required TResult Function(LoginResponse data) successLogout,
    required TResult Function(String error) errorLogout,
  }) {
    return loadingLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingLogin,
    TResult? Function(LoginResponse data)? successLogin,
    TResult? Function(String error)? errorLogin,
    TResult? Function()? showPasswordState,
    TResult? Function()? loadingGetUser,
    TResult? Function(LoginResponse data)? successGetUser,
    TResult? Function(String error)? errorGetUser,
    TResult? Function()? loadingLogout,
    TResult? Function(LoginResponse data)? successLogout,
    TResult? Function(String error)? errorLogout,
  }) {
    return loadingLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingLogin,
    TResult Function(LoginResponse data)? successLogin,
    TResult Function(String error)? errorLogin,
    TResult Function()? showPasswordState,
    TResult Function()? loadingGetUser,
    TResult Function(LoginResponse data)? successGetUser,
    TResult Function(String error)? errorGetUser,
    TResult Function()? loadingLogout,
    TResult Function(LoginResponse data)? successLogout,
    TResult Function(String error)? errorLogout,
    required TResult orElse(),
  }) {
    if (loadingLogout != null) {
      return loadingLogout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingLogin value) loadingLogin,
    required TResult Function(SuccessLogin value) successLogin,
    required TResult Function(ErrorLogin value) errorLogin,
    required TResult Function(ShowPasswordState value) showPasswordState,
    required TResult Function(LoadingGetUser value) loadingGetUser,
    required TResult Function(SuccessGetUser value) successGetUser,
    required TResult Function(ErrorGetUser value) errorGetUser,
    required TResult Function(LoadingLogout value) loadingLogout,
    required TResult Function(SuccessLogout value) successLogout,
    required TResult Function(ErrorLogout value) errorLogout,
  }) {
    return loadingLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingLogin value)? loadingLogin,
    TResult? Function(SuccessLogin value)? successLogin,
    TResult? Function(ErrorLogin value)? errorLogin,
    TResult? Function(ShowPasswordState value)? showPasswordState,
    TResult? Function(LoadingGetUser value)? loadingGetUser,
    TResult? Function(SuccessGetUser value)? successGetUser,
    TResult? Function(ErrorGetUser value)? errorGetUser,
    TResult? Function(LoadingLogout value)? loadingLogout,
    TResult? Function(SuccessLogout value)? successLogout,
    TResult? Function(ErrorLogout value)? errorLogout,
  }) {
    return loadingLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingLogin value)? loadingLogin,
    TResult Function(SuccessLogin value)? successLogin,
    TResult Function(ErrorLogin value)? errorLogin,
    TResult Function(ShowPasswordState value)? showPasswordState,
    TResult Function(LoadingGetUser value)? loadingGetUser,
    TResult Function(SuccessGetUser value)? successGetUser,
    TResult Function(ErrorGetUser value)? errorGetUser,
    TResult Function(LoadingLogout value)? loadingLogout,
    TResult Function(SuccessLogout value)? successLogout,
    TResult Function(ErrorLogout value)? errorLogout,
    required TResult orElse(),
  }) {
    if (loadingLogout != null) {
      return loadingLogout(this);
    }
    return orElse();
  }
}

abstract class LoadingLogout implements LoginState {
  const factory LoadingLogout() = _$LoadingLogoutImpl;
}

/// @nodoc
abstract class _$$SuccessLogoutImplCopyWith<$Res> {
  factory _$$SuccessLogoutImplCopyWith(
          _$SuccessLogoutImpl value, $Res Function(_$SuccessLogoutImpl) then) =
      __$$SuccessLogoutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginResponse data});
}

/// @nodoc
class __$$SuccessLogoutImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$SuccessLogoutImpl>
    implements _$$SuccessLogoutImplCopyWith<$Res> {
  __$$SuccessLogoutImplCopyWithImpl(
      _$SuccessLogoutImpl _value, $Res Function(_$SuccessLogoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessLogoutImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginResponse,
    ));
  }
}

/// @nodoc

class _$SuccessLogoutImpl implements SuccessLogout {
  const _$SuccessLogoutImpl(this.data);

  @override
  final LoginResponse data;

  @override
  String toString() {
    return 'LoginState.successLogout(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessLogoutImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessLogoutImplCopyWith<_$SuccessLogoutImpl> get copyWith =>
      __$$SuccessLogoutImplCopyWithImpl<_$SuccessLogoutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingLogin,
    required TResult Function(LoginResponse data) successLogin,
    required TResult Function(String error) errorLogin,
    required TResult Function() showPasswordState,
    required TResult Function() loadingGetUser,
    required TResult Function(LoginResponse data) successGetUser,
    required TResult Function(String error) errorGetUser,
    required TResult Function() loadingLogout,
    required TResult Function(LoginResponse data) successLogout,
    required TResult Function(String error) errorLogout,
  }) {
    return successLogout(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingLogin,
    TResult? Function(LoginResponse data)? successLogin,
    TResult? Function(String error)? errorLogin,
    TResult? Function()? showPasswordState,
    TResult? Function()? loadingGetUser,
    TResult? Function(LoginResponse data)? successGetUser,
    TResult? Function(String error)? errorGetUser,
    TResult? Function()? loadingLogout,
    TResult? Function(LoginResponse data)? successLogout,
    TResult? Function(String error)? errorLogout,
  }) {
    return successLogout?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingLogin,
    TResult Function(LoginResponse data)? successLogin,
    TResult Function(String error)? errorLogin,
    TResult Function()? showPasswordState,
    TResult Function()? loadingGetUser,
    TResult Function(LoginResponse data)? successGetUser,
    TResult Function(String error)? errorGetUser,
    TResult Function()? loadingLogout,
    TResult Function(LoginResponse data)? successLogout,
    TResult Function(String error)? errorLogout,
    required TResult orElse(),
  }) {
    if (successLogout != null) {
      return successLogout(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingLogin value) loadingLogin,
    required TResult Function(SuccessLogin value) successLogin,
    required TResult Function(ErrorLogin value) errorLogin,
    required TResult Function(ShowPasswordState value) showPasswordState,
    required TResult Function(LoadingGetUser value) loadingGetUser,
    required TResult Function(SuccessGetUser value) successGetUser,
    required TResult Function(ErrorGetUser value) errorGetUser,
    required TResult Function(LoadingLogout value) loadingLogout,
    required TResult Function(SuccessLogout value) successLogout,
    required TResult Function(ErrorLogout value) errorLogout,
  }) {
    return successLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingLogin value)? loadingLogin,
    TResult? Function(SuccessLogin value)? successLogin,
    TResult? Function(ErrorLogin value)? errorLogin,
    TResult? Function(ShowPasswordState value)? showPasswordState,
    TResult? Function(LoadingGetUser value)? loadingGetUser,
    TResult? Function(SuccessGetUser value)? successGetUser,
    TResult? Function(ErrorGetUser value)? errorGetUser,
    TResult? Function(LoadingLogout value)? loadingLogout,
    TResult? Function(SuccessLogout value)? successLogout,
    TResult? Function(ErrorLogout value)? errorLogout,
  }) {
    return successLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingLogin value)? loadingLogin,
    TResult Function(SuccessLogin value)? successLogin,
    TResult Function(ErrorLogin value)? errorLogin,
    TResult Function(ShowPasswordState value)? showPasswordState,
    TResult Function(LoadingGetUser value)? loadingGetUser,
    TResult Function(SuccessGetUser value)? successGetUser,
    TResult Function(ErrorGetUser value)? errorGetUser,
    TResult Function(LoadingLogout value)? loadingLogout,
    TResult Function(SuccessLogout value)? successLogout,
    TResult Function(ErrorLogout value)? errorLogout,
    required TResult orElse(),
  }) {
    if (successLogout != null) {
      return successLogout(this);
    }
    return orElse();
  }
}

abstract class SuccessLogout implements LoginState {
  const factory SuccessLogout(final LoginResponse data) = _$SuccessLogoutImpl;

  LoginResponse get data;
  @JsonKey(ignore: true)
  _$$SuccessLogoutImplCopyWith<_$SuccessLogoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorLogoutImplCopyWith<$Res> {
  factory _$$ErrorLogoutImplCopyWith(
          _$ErrorLogoutImpl value, $Res Function(_$ErrorLogoutImpl) then) =
      __$$ErrorLogoutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorLogoutImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ErrorLogoutImpl>
    implements _$$ErrorLogoutImplCopyWith<$Res> {
  __$$ErrorLogoutImplCopyWithImpl(
      _$ErrorLogoutImpl _value, $Res Function(_$ErrorLogoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorLogoutImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorLogoutImpl implements ErrorLogout {
  const _$ErrorLogoutImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'LoginState.errorLogout(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorLogoutImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorLogoutImplCopyWith<_$ErrorLogoutImpl> get copyWith =>
      __$$ErrorLogoutImplCopyWithImpl<_$ErrorLogoutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingLogin,
    required TResult Function(LoginResponse data) successLogin,
    required TResult Function(String error) errorLogin,
    required TResult Function() showPasswordState,
    required TResult Function() loadingGetUser,
    required TResult Function(LoginResponse data) successGetUser,
    required TResult Function(String error) errorGetUser,
    required TResult Function() loadingLogout,
    required TResult Function(LoginResponse data) successLogout,
    required TResult Function(String error) errorLogout,
  }) {
    return errorLogout(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingLogin,
    TResult? Function(LoginResponse data)? successLogin,
    TResult? Function(String error)? errorLogin,
    TResult? Function()? showPasswordState,
    TResult? Function()? loadingGetUser,
    TResult? Function(LoginResponse data)? successGetUser,
    TResult? Function(String error)? errorGetUser,
    TResult? Function()? loadingLogout,
    TResult? Function(LoginResponse data)? successLogout,
    TResult? Function(String error)? errorLogout,
  }) {
    return errorLogout?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingLogin,
    TResult Function(LoginResponse data)? successLogin,
    TResult Function(String error)? errorLogin,
    TResult Function()? showPasswordState,
    TResult Function()? loadingGetUser,
    TResult Function(LoginResponse data)? successGetUser,
    TResult Function(String error)? errorGetUser,
    TResult Function()? loadingLogout,
    TResult Function(LoginResponse data)? successLogout,
    TResult Function(String error)? errorLogout,
    required TResult orElse(),
  }) {
    if (errorLogout != null) {
      return errorLogout(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingLogin value) loadingLogin,
    required TResult Function(SuccessLogin value) successLogin,
    required TResult Function(ErrorLogin value) errorLogin,
    required TResult Function(ShowPasswordState value) showPasswordState,
    required TResult Function(LoadingGetUser value) loadingGetUser,
    required TResult Function(SuccessGetUser value) successGetUser,
    required TResult Function(ErrorGetUser value) errorGetUser,
    required TResult Function(LoadingLogout value) loadingLogout,
    required TResult Function(SuccessLogout value) successLogout,
    required TResult Function(ErrorLogout value) errorLogout,
  }) {
    return errorLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingLogin value)? loadingLogin,
    TResult? Function(SuccessLogin value)? successLogin,
    TResult? Function(ErrorLogin value)? errorLogin,
    TResult? Function(ShowPasswordState value)? showPasswordState,
    TResult? Function(LoadingGetUser value)? loadingGetUser,
    TResult? Function(SuccessGetUser value)? successGetUser,
    TResult? Function(ErrorGetUser value)? errorGetUser,
    TResult? Function(LoadingLogout value)? loadingLogout,
    TResult? Function(SuccessLogout value)? successLogout,
    TResult? Function(ErrorLogout value)? errorLogout,
  }) {
    return errorLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingLogin value)? loadingLogin,
    TResult Function(SuccessLogin value)? successLogin,
    TResult Function(ErrorLogin value)? errorLogin,
    TResult Function(ShowPasswordState value)? showPasswordState,
    TResult Function(LoadingGetUser value)? loadingGetUser,
    TResult Function(SuccessGetUser value)? successGetUser,
    TResult Function(ErrorGetUser value)? errorGetUser,
    TResult Function(LoadingLogout value)? loadingLogout,
    TResult Function(SuccessLogout value)? successLogout,
    TResult Function(ErrorLogout value)? errorLogout,
    required TResult orElse(),
  }) {
    if (errorLogout != null) {
      return errorLogout(this);
    }
    return orElse();
  }
}

abstract class ErrorLogout implements LoginState {
  const factory ErrorLogout({required final String error}) = _$ErrorLogoutImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorLogoutImplCopyWith<_$ErrorLogoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

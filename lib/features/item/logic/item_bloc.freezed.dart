// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getItems,
    required TResult Function(int id) getProfileItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getItems,
    TResult? Function(int id)? getProfileItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getItems,
    TResult Function(int id)? getProfileItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetItems value) getItems,
    required TResult Function(GetItemProfile value) getProfileItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetItems value)? getItems,
    TResult? Function(GetItemProfile value)? getProfileItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetItems value)? getItems,
    TResult Function(GetItemProfile value)? getProfileItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemEventCopyWith<$Res> {
  factory $ItemEventCopyWith(ItemEvent value, $Res Function(ItemEvent) then) =
      _$ItemEventCopyWithImpl<$Res, ItemEvent>;
}

/// @nodoc
class _$ItemEventCopyWithImpl<$Res, $Val extends ItemEvent>
    implements $ItemEventCopyWith<$Res> {
  _$ItemEventCopyWithImpl(this._value, this._then);

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
    extends _$ItemEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'ItemEvent.started()';
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
    required TResult Function() getItems,
    required TResult Function(int id) getProfileItem,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getItems,
    TResult? Function(int id)? getProfileItem,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getItems,
    TResult Function(int id)? getProfileItem,
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
    required TResult Function(GetItems value) getItems,
    required TResult Function(GetItemProfile value) getProfileItem,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetItems value)? getItems,
    TResult? Function(GetItemProfile value)? getProfileItem,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetItems value)? getItems,
    TResult Function(GetItemProfile value)? getProfileItem,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ItemEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetItemsImplCopyWith<$Res> {
  factory _$$GetItemsImplCopyWith(
          _$GetItemsImpl value, $Res Function(_$GetItemsImpl) then) =
      __$$GetItemsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetItemsImplCopyWithImpl<$Res>
    extends _$ItemEventCopyWithImpl<$Res, _$GetItemsImpl>
    implements _$$GetItemsImplCopyWith<$Res> {
  __$$GetItemsImplCopyWithImpl(
      _$GetItemsImpl _value, $Res Function(_$GetItemsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetItemsImpl implements GetItems {
  const _$GetItemsImpl();

  @override
  String toString() {
    return 'ItemEvent.getItems()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetItemsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getItems,
    required TResult Function(int id) getProfileItem,
  }) {
    return getItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getItems,
    TResult? Function(int id)? getProfileItem,
  }) {
    return getItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getItems,
    TResult Function(int id)? getProfileItem,
    required TResult orElse(),
  }) {
    if (getItems != null) {
      return getItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetItems value) getItems,
    required TResult Function(GetItemProfile value) getProfileItem,
  }) {
    return getItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetItems value)? getItems,
    TResult? Function(GetItemProfile value)? getProfileItem,
  }) {
    return getItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetItems value)? getItems,
    TResult Function(GetItemProfile value)? getProfileItem,
    required TResult orElse(),
  }) {
    if (getItems != null) {
      return getItems(this);
    }
    return orElse();
  }
}

abstract class GetItems implements ItemEvent {
  const factory GetItems() = _$GetItemsImpl;
}

/// @nodoc
abstract class _$$GetItemProfileImplCopyWith<$Res> {
  factory _$$GetItemProfileImplCopyWith(_$GetItemProfileImpl value,
          $Res Function(_$GetItemProfileImpl) then) =
      __$$GetItemProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetItemProfileImplCopyWithImpl<$Res>
    extends _$ItemEventCopyWithImpl<$Res, _$GetItemProfileImpl>
    implements _$$GetItemProfileImplCopyWith<$Res> {
  __$$GetItemProfileImplCopyWithImpl(
      _$GetItemProfileImpl _value, $Res Function(_$GetItemProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetItemProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetItemProfileImpl implements GetItemProfile {
  const _$GetItemProfileImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'ItemEvent.getProfileItem(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetItemProfileImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetItemProfileImplCopyWith<_$GetItemProfileImpl> get copyWith =>
      __$$GetItemProfileImplCopyWithImpl<_$GetItemProfileImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getItems,
    required TResult Function(int id) getProfileItem,
  }) {
    return getProfileItem(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getItems,
    TResult? Function(int id)? getProfileItem,
  }) {
    return getProfileItem?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getItems,
    TResult Function(int id)? getProfileItem,
    required TResult orElse(),
  }) {
    if (getProfileItem != null) {
      return getProfileItem(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetItems value) getItems,
    required TResult Function(GetItemProfile value) getProfileItem,
  }) {
    return getProfileItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetItems value)? getItems,
    TResult? Function(GetItemProfile value)? getProfileItem,
  }) {
    return getProfileItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetItems value)? getItems,
    TResult Function(GetItemProfile value)? getProfileItem,
    required TResult orElse(),
  }) {
    if (getProfileItem != null) {
      return getProfileItem(this);
    }
    return orElse();
  }
}

abstract class GetItemProfile implements ItemEvent {
  const factory GetItemProfile({required final int id}) = _$GetItemProfileImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$GetItemProfileImplCopyWith<_$GetItemProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGetItems,
    required TResult Function(ItemsResponse data) successGetItems,
    required TResult Function(String error) errorGetItems,
    required TResult Function() loadingGetItemProfile,
    required TResult Function(ItemProfileResponse data) successGetItemProfile,
    required TResult Function(String error) errorGetItemProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGetItems,
    TResult? Function(ItemsResponse data)? successGetItems,
    TResult? Function(String error)? errorGetItems,
    TResult? Function()? loadingGetItemProfile,
    TResult? Function(ItemProfileResponse data)? successGetItemProfile,
    TResult? Function(String error)? errorGetItemProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGetItems,
    TResult Function(ItemsResponse data)? successGetItems,
    TResult Function(String error)? errorGetItems,
    TResult Function()? loadingGetItemProfile,
    TResult Function(ItemProfileResponse data)? successGetItemProfile,
    TResult Function(String error)? errorGetItemProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingGetItems value) loadingGetItems,
    required TResult Function(SuccessGetItems value) successGetItems,
    required TResult Function(ErrorGetItems value) errorGetItems,
    required TResult Function(LoadingGetItemProfile value)
        loadingGetItemProfile,
    required TResult Function(SuccessGetItemProfile value)
        successGetItemProfile,
    required TResult Function(ErrorGetItemProfile value) errorGetItemProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGetItems value)? loadingGetItems,
    TResult? Function(SuccessGetItems value)? successGetItems,
    TResult? Function(ErrorGetItems value)? errorGetItems,
    TResult? Function(LoadingGetItemProfile value)? loadingGetItemProfile,
    TResult? Function(SuccessGetItemProfile value)? successGetItemProfile,
    TResult? Function(ErrorGetItemProfile value)? errorGetItemProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGetItems value)? loadingGetItems,
    TResult Function(SuccessGetItems value)? successGetItems,
    TResult Function(ErrorGetItems value)? errorGetItems,
    TResult Function(LoadingGetItemProfile value)? loadingGetItemProfile,
    TResult Function(SuccessGetItemProfile value)? successGetItemProfile,
    TResult Function(ErrorGetItemProfile value)? errorGetItemProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemStateCopyWith<$Res> {
  factory $ItemStateCopyWith(ItemState value, $Res Function(ItemState) then) =
      _$ItemStateCopyWithImpl<$Res, ItemState>;
}

/// @nodoc
class _$ItemStateCopyWithImpl<$Res, $Val extends ItemState>
    implements $ItemStateCopyWith<$Res> {
  _$ItemStateCopyWithImpl(this._value, this._then);

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
    extends _$ItemStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ItemState.initial()';
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
    required TResult Function() loadingGetItems,
    required TResult Function(ItemsResponse data) successGetItems,
    required TResult Function(String error) errorGetItems,
    required TResult Function() loadingGetItemProfile,
    required TResult Function(ItemProfileResponse data) successGetItemProfile,
    required TResult Function(String error) errorGetItemProfile,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGetItems,
    TResult? Function(ItemsResponse data)? successGetItems,
    TResult? Function(String error)? errorGetItems,
    TResult? Function()? loadingGetItemProfile,
    TResult? Function(ItemProfileResponse data)? successGetItemProfile,
    TResult? Function(String error)? errorGetItemProfile,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGetItems,
    TResult Function(ItemsResponse data)? successGetItems,
    TResult Function(String error)? errorGetItems,
    TResult Function()? loadingGetItemProfile,
    TResult Function(ItemProfileResponse data)? successGetItemProfile,
    TResult Function(String error)? errorGetItemProfile,
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
    required TResult Function(LoadingGetItems value) loadingGetItems,
    required TResult Function(SuccessGetItems value) successGetItems,
    required TResult Function(ErrorGetItems value) errorGetItems,
    required TResult Function(LoadingGetItemProfile value)
        loadingGetItemProfile,
    required TResult Function(SuccessGetItemProfile value)
        successGetItemProfile,
    required TResult Function(ErrorGetItemProfile value) errorGetItemProfile,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGetItems value)? loadingGetItems,
    TResult? Function(SuccessGetItems value)? successGetItems,
    TResult? Function(ErrorGetItems value)? errorGetItems,
    TResult? Function(LoadingGetItemProfile value)? loadingGetItemProfile,
    TResult? Function(SuccessGetItemProfile value)? successGetItemProfile,
    TResult? Function(ErrorGetItemProfile value)? errorGetItemProfile,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGetItems value)? loadingGetItems,
    TResult Function(SuccessGetItems value)? successGetItems,
    TResult Function(ErrorGetItems value)? errorGetItems,
    TResult Function(LoadingGetItemProfile value)? loadingGetItemProfile,
    TResult Function(SuccessGetItemProfile value)? successGetItemProfile,
    TResult Function(ErrorGetItemProfile value)? errorGetItemProfile,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ItemState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingGetItemsImplCopyWith<$Res> {
  factory _$$LoadingGetItemsImplCopyWith(_$LoadingGetItemsImpl value,
          $Res Function(_$LoadingGetItemsImpl) then) =
      __$$LoadingGetItemsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingGetItemsImplCopyWithImpl<$Res>
    extends _$ItemStateCopyWithImpl<$Res, _$LoadingGetItemsImpl>
    implements _$$LoadingGetItemsImplCopyWith<$Res> {
  __$$LoadingGetItemsImplCopyWithImpl(
      _$LoadingGetItemsImpl _value, $Res Function(_$LoadingGetItemsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingGetItemsImpl implements LoadingGetItems {
  const _$LoadingGetItemsImpl();

  @override
  String toString() {
    return 'ItemState.loadingGetItems()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingGetItemsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGetItems,
    required TResult Function(ItemsResponse data) successGetItems,
    required TResult Function(String error) errorGetItems,
    required TResult Function() loadingGetItemProfile,
    required TResult Function(ItemProfileResponse data) successGetItemProfile,
    required TResult Function(String error) errorGetItemProfile,
  }) {
    return loadingGetItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGetItems,
    TResult? Function(ItemsResponse data)? successGetItems,
    TResult? Function(String error)? errorGetItems,
    TResult? Function()? loadingGetItemProfile,
    TResult? Function(ItemProfileResponse data)? successGetItemProfile,
    TResult? Function(String error)? errorGetItemProfile,
  }) {
    return loadingGetItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGetItems,
    TResult Function(ItemsResponse data)? successGetItems,
    TResult Function(String error)? errorGetItems,
    TResult Function()? loadingGetItemProfile,
    TResult Function(ItemProfileResponse data)? successGetItemProfile,
    TResult Function(String error)? errorGetItemProfile,
    required TResult orElse(),
  }) {
    if (loadingGetItems != null) {
      return loadingGetItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingGetItems value) loadingGetItems,
    required TResult Function(SuccessGetItems value) successGetItems,
    required TResult Function(ErrorGetItems value) errorGetItems,
    required TResult Function(LoadingGetItemProfile value)
        loadingGetItemProfile,
    required TResult Function(SuccessGetItemProfile value)
        successGetItemProfile,
    required TResult Function(ErrorGetItemProfile value) errorGetItemProfile,
  }) {
    return loadingGetItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGetItems value)? loadingGetItems,
    TResult? Function(SuccessGetItems value)? successGetItems,
    TResult? Function(ErrorGetItems value)? errorGetItems,
    TResult? Function(LoadingGetItemProfile value)? loadingGetItemProfile,
    TResult? Function(SuccessGetItemProfile value)? successGetItemProfile,
    TResult? Function(ErrorGetItemProfile value)? errorGetItemProfile,
  }) {
    return loadingGetItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGetItems value)? loadingGetItems,
    TResult Function(SuccessGetItems value)? successGetItems,
    TResult Function(ErrorGetItems value)? errorGetItems,
    TResult Function(LoadingGetItemProfile value)? loadingGetItemProfile,
    TResult Function(SuccessGetItemProfile value)? successGetItemProfile,
    TResult Function(ErrorGetItemProfile value)? errorGetItemProfile,
    required TResult orElse(),
  }) {
    if (loadingGetItems != null) {
      return loadingGetItems(this);
    }
    return orElse();
  }
}

abstract class LoadingGetItems implements ItemState {
  const factory LoadingGetItems() = _$LoadingGetItemsImpl;
}

/// @nodoc
abstract class _$$SuccessGetItemsImplCopyWith<$Res> {
  factory _$$SuccessGetItemsImplCopyWith(_$SuccessGetItemsImpl value,
          $Res Function(_$SuccessGetItemsImpl) then) =
      __$$SuccessGetItemsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ItemsResponse data});
}

/// @nodoc
class __$$SuccessGetItemsImplCopyWithImpl<$Res>
    extends _$ItemStateCopyWithImpl<$Res, _$SuccessGetItemsImpl>
    implements _$$SuccessGetItemsImplCopyWith<$Res> {
  __$$SuccessGetItemsImplCopyWithImpl(
      _$SuccessGetItemsImpl _value, $Res Function(_$SuccessGetItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessGetItemsImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ItemsResponse,
    ));
  }
}

/// @nodoc

class _$SuccessGetItemsImpl implements SuccessGetItems {
  const _$SuccessGetItemsImpl(this.data);

  @override
  final ItemsResponse data;

  @override
  String toString() {
    return 'ItemState.successGetItems(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessGetItemsImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessGetItemsImplCopyWith<_$SuccessGetItemsImpl> get copyWith =>
      __$$SuccessGetItemsImplCopyWithImpl<_$SuccessGetItemsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGetItems,
    required TResult Function(ItemsResponse data) successGetItems,
    required TResult Function(String error) errorGetItems,
    required TResult Function() loadingGetItemProfile,
    required TResult Function(ItemProfileResponse data) successGetItemProfile,
    required TResult Function(String error) errorGetItemProfile,
  }) {
    return successGetItems(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGetItems,
    TResult? Function(ItemsResponse data)? successGetItems,
    TResult? Function(String error)? errorGetItems,
    TResult? Function()? loadingGetItemProfile,
    TResult? Function(ItemProfileResponse data)? successGetItemProfile,
    TResult? Function(String error)? errorGetItemProfile,
  }) {
    return successGetItems?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGetItems,
    TResult Function(ItemsResponse data)? successGetItems,
    TResult Function(String error)? errorGetItems,
    TResult Function()? loadingGetItemProfile,
    TResult Function(ItemProfileResponse data)? successGetItemProfile,
    TResult Function(String error)? errorGetItemProfile,
    required TResult orElse(),
  }) {
    if (successGetItems != null) {
      return successGetItems(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingGetItems value) loadingGetItems,
    required TResult Function(SuccessGetItems value) successGetItems,
    required TResult Function(ErrorGetItems value) errorGetItems,
    required TResult Function(LoadingGetItemProfile value)
        loadingGetItemProfile,
    required TResult Function(SuccessGetItemProfile value)
        successGetItemProfile,
    required TResult Function(ErrorGetItemProfile value) errorGetItemProfile,
  }) {
    return successGetItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGetItems value)? loadingGetItems,
    TResult? Function(SuccessGetItems value)? successGetItems,
    TResult? Function(ErrorGetItems value)? errorGetItems,
    TResult? Function(LoadingGetItemProfile value)? loadingGetItemProfile,
    TResult? Function(SuccessGetItemProfile value)? successGetItemProfile,
    TResult? Function(ErrorGetItemProfile value)? errorGetItemProfile,
  }) {
    return successGetItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGetItems value)? loadingGetItems,
    TResult Function(SuccessGetItems value)? successGetItems,
    TResult Function(ErrorGetItems value)? errorGetItems,
    TResult Function(LoadingGetItemProfile value)? loadingGetItemProfile,
    TResult Function(SuccessGetItemProfile value)? successGetItemProfile,
    TResult Function(ErrorGetItemProfile value)? errorGetItemProfile,
    required TResult orElse(),
  }) {
    if (successGetItems != null) {
      return successGetItems(this);
    }
    return orElse();
  }
}

abstract class SuccessGetItems implements ItemState {
  const factory SuccessGetItems(final ItemsResponse data) =
      _$SuccessGetItemsImpl;

  ItemsResponse get data;
  @JsonKey(ignore: true)
  _$$SuccessGetItemsImplCopyWith<_$SuccessGetItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorGetItemsImplCopyWith<$Res> {
  factory _$$ErrorGetItemsImplCopyWith(
          _$ErrorGetItemsImpl value, $Res Function(_$ErrorGetItemsImpl) then) =
      __$$ErrorGetItemsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorGetItemsImplCopyWithImpl<$Res>
    extends _$ItemStateCopyWithImpl<$Res, _$ErrorGetItemsImpl>
    implements _$$ErrorGetItemsImplCopyWith<$Res> {
  __$$ErrorGetItemsImplCopyWithImpl(
      _$ErrorGetItemsImpl _value, $Res Function(_$ErrorGetItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorGetItemsImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorGetItemsImpl implements ErrorGetItems {
  const _$ErrorGetItemsImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ItemState.errorGetItems(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorGetItemsImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorGetItemsImplCopyWith<_$ErrorGetItemsImpl> get copyWith =>
      __$$ErrorGetItemsImplCopyWithImpl<_$ErrorGetItemsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGetItems,
    required TResult Function(ItemsResponse data) successGetItems,
    required TResult Function(String error) errorGetItems,
    required TResult Function() loadingGetItemProfile,
    required TResult Function(ItemProfileResponse data) successGetItemProfile,
    required TResult Function(String error) errorGetItemProfile,
  }) {
    return errorGetItems(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGetItems,
    TResult? Function(ItemsResponse data)? successGetItems,
    TResult? Function(String error)? errorGetItems,
    TResult? Function()? loadingGetItemProfile,
    TResult? Function(ItemProfileResponse data)? successGetItemProfile,
    TResult? Function(String error)? errorGetItemProfile,
  }) {
    return errorGetItems?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGetItems,
    TResult Function(ItemsResponse data)? successGetItems,
    TResult Function(String error)? errorGetItems,
    TResult Function()? loadingGetItemProfile,
    TResult Function(ItemProfileResponse data)? successGetItemProfile,
    TResult Function(String error)? errorGetItemProfile,
    required TResult orElse(),
  }) {
    if (errorGetItems != null) {
      return errorGetItems(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingGetItems value) loadingGetItems,
    required TResult Function(SuccessGetItems value) successGetItems,
    required TResult Function(ErrorGetItems value) errorGetItems,
    required TResult Function(LoadingGetItemProfile value)
        loadingGetItemProfile,
    required TResult Function(SuccessGetItemProfile value)
        successGetItemProfile,
    required TResult Function(ErrorGetItemProfile value) errorGetItemProfile,
  }) {
    return errorGetItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGetItems value)? loadingGetItems,
    TResult? Function(SuccessGetItems value)? successGetItems,
    TResult? Function(ErrorGetItems value)? errorGetItems,
    TResult? Function(LoadingGetItemProfile value)? loadingGetItemProfile,
    TResult? Function(SuccessGetItemProfile value)? successGetItemProfile,
    TResult? Function(ErrorGetItemProfile value)? errorGetItemProfile,
  }) {
    return errorGetItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGetItems value)? loadingGetItems,
    TResult Function(SuccessGetItems value)? successGetItems,
    TResult Function(ErrorGetItems value)? errorGetItems,
    TResult Function(LoadingGetItemProfile value)? loadingGetItemProfile,
    TResult Function(SuccessGetItemProfile value)? successGetItemProfile,
    TResult Function(ErrorGetItemProfile value)? errorGetItemProfile,
    required TResult orElse(),
  }) {
    if (errorGetItems != null) {
      return errorGetItems(this);
    }
    return orElse();
  }
}

abstract class ErrorGetItems implements ItemState {
  const factory ErrorGetItems({required final String error}) =
      _$ErrorGetItemsImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorGetItemsImplCopyWith<_$ErrorGetItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingGetItemProfileImplCopyWith<$Res> {
  factory _$$LoadingGetItemProfileImplCopyWith(
          _$LoadingGetItemProfileImpl value,
          $Res Function(_$LoadingGetItemProfileImpl) then) =
      __$$LoadingGetItemProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingGetItemProfileImplCopyWithImpl<$Res>
    extends _$ItemStateCopyWithImpl<$Res, _$LoadingGetItemProfileImpl>
    implements _$$LoadingGetItemProfileImplCopyWith<$Res> {
  __$$LoadingGetItemProfileImplCopyWithImpl(_$LoadingGetItemProfileImpl _value,
      $Res Function(_$LoadingGetItemProfileImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingGetItemProfileImpl implements LoadingGetItemProfile {
  const _$LoadingGetItemProfileImpl();

  @override
  String toString() {
    return 'ItemState.loadingGetItemProfile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingGetItemProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGetItems,
    required TResult Function(ItemsResponse data) successGetItems,
    required TResult Function(String error) errorGetItems,
    required TResult Function() loadingGetItemProfile,
    required TResult Function(ItemProfileResponse data) successGetItemProfile,
    required TResult Function(String error) errorGetItemProfile,
  }) {
    return loadingGetItemProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGetItems,
    TResult? Function(ItemsResponse data)? successGetItems,
    TResult? Function(String error)? errorGetItems,
    TResult? Function()? loadingGetItemProfile,
    TResult? Function(ItemProfileResponse data)? successGetItemProfile,
    TResult? Function(String error)? errorGetItemProfile,
  }) {
    return loadingGetItemProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGetItems,
    TResult Function(ItemsResponse data)? successGetItems,
    TResult Function(String error)? errorGetItems,
    TResult Function()? loadingGetItemProfile,
    TResult Function(ItemProfileResponse data)? successGetItemProfile,
    TResult Function(String error)? errorGetItemProfile,
    required TResult orElse(),
  }) {
    if (loadingGetItemProfile != null) {
      return loadingGetItemProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingGetItems value) loadingGetItems,
    required TResult Function(SuccessGetItems value) successGetItems,
    required TResult Function(ErrorGetItems value) errorGetItems,
    required TResult Function(LoadingGetItemProfile value)
        loadingGetItemProfile,
    required TResult Function(SuccessGetItemProfile value)
        successGetItemProfile,
    required TResult Function(ErrorGetItemProfile value) errorGetItemProfile,
  }) {
    return loadingGetItemProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGetItems value)? loadingGetItems,
    TResult? Function(SuccessGetItems value)? successGetItems,
    TResult? Function(ErrorGetItems value)? errorGetItems,
    TResult? Function(LoadingGetItemProfile value)? loadingGetItemProfile,
    TResult? Function(SuccessGetItemProfile value)? successGetItemProfile,
    TResult? Function(ErrorGetItemProfile value)? errorGetItemProfile,
  }) {
    return loadingGetItemProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGetItems value)? loadingGetItems,
    TResult Function(SuccessGetItems value)? successGetItems,
    TResult Function(ErrorGetItems value)? errorGetItems,
    TResult Function(LoadingGetItemProfile value)? loadingGetItemProfile,
    TResult Function(SuccessGetItemProfile value)? successGetItemProfile,
    TResult Function(ErrorGetItemProfile value)? errorGetItemProfile,
    required TResult orElse(),
  }) {
    if (loadingGetItemProfile != null) {
      return loadingGetItemProfile(this);
    }
    return orElse();
  }
}

abstract class LoadingGetItemProfile implements ItemState {
  const factory LoadingGetItemProfile() = _$LoadingGetItemProfileImpl;
}

/// @nodoc
abstract class _$$SuccessGetItemProfileImplCopyWith<$Res> {
  factory _$$SuccessGetItemProfileImplCopyWith(
          _$SuccessGetItemProfileImpl value,
          $Res Function(_$SuccessGetItemProfileImpl) then) =
      __$$SuccessGetItemProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ItemProfileResponse data});
}

/// @nodoc
class __$$SuccessGetItemProfileImplCopyWithImpl<$Res>
    extends _$ItemStateCopyWithImpl<$Res, _$SuccessGetItemProfileImpl>
    implements _$$SuccessGetItemProfileImplCopyWith<$Res> {
  __$$SuccessGetItemProfileImplCopyWithImpl(_$SuccessGetItemProfileImpl _value,
      $Res Function(_$SuccessGetItemProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessGetItemProfileImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ItemProfileResponse,
    ));
  }
}

/// @nodoc

class _$SuccessGetItemProfileImpl implements SuccessGetItemProfile {
  const _$SuccessGetItemProfileImpl(this.data);

  @override
  final ItemProfileResponse data;

  @override
  String toString() {
    return 'ItemState.successGetItemProfile(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessGetItemProfileImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessGetItemProfileImplCopyWith<_$SuccessGetItemProfileImpl>
      get copyWith => __$$SuccessGetItemProfileImplCopyWithImpl<
          _$SuccessGetItemProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGetItems,
    required TResult Function(ItemsResponse data) successGetItems,
    required TResult Function(String error) errorGetItems,
    required TResult Function() loadingGetItemProfile,
    required TResult Function(ItemProfileResponse data) successGetItemProfile,
    required TResult Function(String error) errorGetItemProfile,
  }) {
    return successGetItemProfile(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGetItems,
    TResult? Function(ItemsResponse data)? successGetItems,
    TResult? Function(String error)? errorGetItems,
    TResult? Function()? loadingGetItemProfile,
    TResult? Function(ItemProfileResponse data)? successGetItemProfile,
    TResult? Function(String error)? errorGetItemProfile,
  }) {
    return successGetItemProfile?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGetItems,
    TResult Function(ItemsResponse data)? successGetItems,
    TResult Function(String error)? errorGetItems,
    TResult Function()? loadingGetItemProfile,
    TResult Function(ItemProfileResponse data)? successGetItemProfile,
    TResult Function(String error)? errorGetItemProfile,
    required TResult orElse(),
  }) {
    if (successGetItemProfile != null) {
      return successGetItemProfile(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingGetItems value) loadingGetItems,
    required TResult Function(SuccessGetItems value) successGetItems,
    required TResult Function(ErrorGetItems value) errorGetItems,
    required TResult Function(LoadingGetItemProfile value)
        loadingGetItemProfile,
    required TResult Function(SuccessGetItemProfile value)
        successGetItemProfile,
    required TResult Function(ErrorGetItemProfile value) errorGetItemProfile,
  }) {
    return successGetItemProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGetItems value)? loadingGetItems,
    TResult? Function(SuccessGetItems value)? successGetItems,
    TResult? Function(ErrorGetItems value)? errorGetItems,
    TResult? Function(LoadingGetItemProfile value)? loadingGetItemProfile,
    TResult? Function(SuccessGetItemProfile value)? successGetItemProfile,
    TResult? Function(ErrorGetItemProfile value)? errorGetItemProfile,
  }) {
    return successGetItemProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGetItems value)? loadingGetItems,
    TResult Function(SuccessGetItems value)? successGetItems,
    TResult Function(ErrorGetItems value)? errorGetItems,
    TResult Function(LoadingGetItemProfile value)? loadingGetItemProfile,
    TResult Function(SuccessGetItemProfile value)? successGetItemProfile,
    TResult Function(ErrorGetItemProfile value)? errorGetItemProfile,
    required TResult orElse(),
  }) {
    if (successGetItemProfile != null) {
      return successGetItemProfile(this);
    }
    return orElse();
  }
}

abstract class SuccessGetItemProfile implements ItemState {
  const factory SuccessGetItemProfile(final ItemProfileResponse data) =
      _$SuccessGetItemProfileImpl;

  ItemProfileResponse get data;
  @JsonKey(ignore: true)
  _$$SuccessGetItemProfileImplCopyWith<_$SuccessGetItemProfileImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorGetItemProfileImplCopyWith<$Res> {
  factory _$$ErrorGetItemProfileImplCopyWith(_$ErrorGetItemProfileImpl value,
          $Res Function(_$ErrorGetItemProfileImpl) then) =
      __$$ErrorGetItemProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorGetItemProfileImplCopyWithImpl<$Res>
    extends _$ItemStateCopyWithImpl<$Res, _$ErrorGetItemProfileImpl>
    implements _$$ErrorGetItemProfileImplCopyWith<$Res> {
  __$$ErrorGetItemProfileImplCopyWithImpl(_$ErrorGetItemProfileImpl _value,
      $Res Function(_$ErrorGetItemProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorGetItemProfileImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorGetItemProfileImpl implements ErrorGetItemProfile {
  const _$ErrorGetItemProfileImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ItemState.errorGetItemProfile(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorGetItemProfileImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorGetItemProfileImplCopyWith<_$ErrorGetItemProfileImpl> get copyWith =>
      __$$ErrorGetItemProfileImplCopyWithImpl<_$ErrorGetItemProfileImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGetItems,
    required TResult Function(ItemsResponse data) successGetItems,
    required TResult Function(String error) errorGetItems,
    required TResult Function() loadingGetItemProfile,
    required TResult Function(ItemProfileResponse data) successGetItemProfile,
    required TResult Function(String error) errorGetItemProfile,
  }) {
    return errorGetItemProfile(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGetItems,
    TResult? Function(ItemsResponse data)? successGetItems,
    TResult? Function(String error)? errorGetItems,
    TResult? Function()? loadingGetItemProfile,
    TResult? Function(ItemProfileResponse data)? successGetItemProfile,
    TResult? Function(String error)? errorGetItemProfile,
  }) {
    return errorGetItemProfile?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGetItems,
    TResult Function(ItemsResponse data)? successGetItems,
    TResult Function(String error)? errorGetItems,
    TResult Function()? loadingGetItemProfile,
    TResult Function(ItemProfileResponse data)? successGetItemProfile,
    TResult Function(String error)? errorGetItemProfile,
    required TResult orElse(),
  }) {
    if (errorGetItemProfile != null) {
      return errorGetItemProfile(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingGetItems value) loadingGetItems,
    required TResult Function(SuccessGetItems value) successGetItems,
    required TResult Function(ErrorGetItems value) errorGetItems,
    required TResult Function(LoadingGetItemProfile value)
        loadingGetItemProfile,
    required TResult Function(SuccessGetItemProfile value)
        successGetItemProfile,
    required TResult Function(ErrorGetItemProfile value) errorGetItemProfile,
  }) {
    return errorGetItemProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGetItems value)? loadingGetItems,
    TResult? Function(SuccessGetItems value)? successGetItems,
    TResult? Function(ErrorGetItems value)? errorGetItems,
    TResult? Function(LoadingGetItemProfile value)? loadingGetItemProfile,
    TResult? Function(SuccessGetItemProfile value)? successGetItemProfile,
    TResult? Function(ErrorGetItemProfile value)? errorGetItemProfile,
  }) {
    return errorGetItemProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGetItems value)? loadingGetItems,
    TResult Function(SuccessGetItems value)? successGetItems,
    TResult Function(ErrorGetItems value)? errorGetItems,
    TResult Function(LoadingGetItemProfile value)? loadingGetItemProfile,
    TResult Function(SuccessGetItemProfile value)? successGetItemProfile,
    TResult Function(ErrorGetItemProfile value)? errorGetItemProfile,
    required TResult orElse(),
  }) {
    if (errorGetItemProfile != null) {
      return errorGetItemProfile(this);
    }
    return orElse();
  }
}

abstract class ErrorGetItemProfile implements ItemState {
  const factory ErrorGetItemProfile({required final String error}) =
      _$ErrorGetItemProfileImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorGetItemProfileImplCopyWith<_$ErrorGetItemProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

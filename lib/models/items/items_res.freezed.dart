// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemsRes _$ItemsResFromJson(Map<String, dynamic> json) {
  return _ItemsRes.fromJson(json);
}

/// @nodoc
mixin _$ItemsRes {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<Item> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsResCopyWith<ItemsRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsResCopyWith<$Res> {
  factory $ItemsResCopyWith(ItemsRes value, $Res Function(ItemsRes) then) =
      _$ItemsResCopyWithImpl<$Res, ItemsRes>;
  @useResult
  $Res call({int status, String message, List<Item> data});
}

/// @nodoc
class _$ItemsResCopyWithImpl<$Res, $Val extends ItemsRes>
    implements $ItemsResCopyWith<$Res> {
  _$ItemsResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemsResImplCopyWith<$Res>
    implements $ItemsResCopyWith<$Res> {
  factory _$$ItemsResImplCopyWith(
          _$ItemsResImpl value, $Res Function(_$ItemsResImpl) then) =
      __$$ItemsResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, List<Item> data});
}

/// @nodoc
class __$$ItemsResImplCopyWithImpl<$Res>
    extends _$ItemsResCopyWithImpl<$Res, _$ItemsResImpl>
    implements _$$ItemsResImplCopyWith<$Res> {
  __$$ItemsResImplCopyWithImpl(
      _$ItemsResImpl _value, $Res Function(_$ItemsResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$ItemsResImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemsResImpl with DiagnosticableTreeMixin implements _ItemsRes {
  const _$ItemsResImpl(
      {required this.status,
      required this.message,
      required final List<Item> data})
      : _data = data;

  factory _$ItemsResImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemsResImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  final List<Item> _data;
  @override
  List<Item> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemsRes(status: $status, message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemsRes'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsResImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsResImplCopyWith<_$ItemsResImpl> get copyWith =>
      __$$ItemsResImplCopyWithImpl<_$ItemsResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemsResImplToJson(
      this,
    );
  }
}

abstract class _ItemsRes implements ItemsRes {
  const factory _ItemsRes(
      {required final int status,
      required final String message,
      required final List<Item> data}) = _$ItemsResImpl;

  factory _ItemsRes.fromJson(Map<String, dynamic> json) =
      _$ItemsResImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  List<Item> get data;
  @override
  @JsonKey(ignore: true)
  _$$ItemsResImplCopyWith<_$ItemsResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call({int id, String name, num price});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, num price});
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_$ItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl with DiagnosticableTreeMixin implements _Item {
  const _$ItemImpl({required this.id, required this.name, required this.price});

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final num price;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Item(id: $id, name: $name, price: $price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Item'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('price', price));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {required final int id,
      required final String name,
      required final num price}) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  num get price;
  @override
  @JsonKey(ignore: true)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemDtails _$ItemDtailsFromJson(Map<String, dynamic> json) {
  return _ItemDtails.fromJson(json);
}

/// @nodoc
mixin _$ItemDtails {
  int get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<Item> get related => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDtailsCopyWith<ItemDtails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDtailsCopyWith<$Res> {
  factory $ItemDtailsCopyWith(
          ItemDtails value, $Res Function(ItemDtails) then) =
      _$ItemDtailsCopyWithImpl<$Res, ItemDtails>;
  @useResult
  $Res call({int id, String imageUrl, String type, List<Item> related});
}

/// @nodoc
class _$ItemDtailsCopyWithImpl<$Res, $Val extends ItemDtails>
    implements $ItemDtailsCopyWith<$Res> {
  _$ItemDtailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? type = null,
    Object? related = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      related: null == related
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemDtailsImplCopyWith<$Res>
    implements $ItemDtailsCopyWith<$Res> {
  factory _$$ItemDtailsImplCopyWith(
          _$ItemDtailsImpl value, $Res Function(_$ItemDtailsImpl) then) =
      __$$ItemDtailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String imageUrl, String type, List<Item> related});
}

/// @nodoc
class __$$ItemDtailsImplCopyWithImpl<$Res>
    extends _$ItemDtailsCopyWithImpl<$Res, _$ItemDtailsImpl>
    implements _$$ItemDtailsImplCopyWith<$Res> {
  __$$ItemDtailsImplCopyWithImpl(
      _$ItemDtailsImpl _value, $Res Function(_$ItemDtailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? type = null,
    Object? related = null,
  }) {
    return _then(_$ItemDtailsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      related: null == related
          ? _value._related
          : related // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemDtailsImpl with DiagnosticableTreeMixin implements _ItemDtails {
  const _$ItemDtailsImpl(
      {required this.id,
      required this.imageUrl,
      required this.type,
      required final List<Item> related})
      : _related = related;

  factory _$ItemDtailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemDtailsImplFromJson(json);

  @override
  final int id;
  @override
  final String imageUrl;
  @override
  final String type;
  final List<Item> _related;
  @override
  List<Item> get related {
    if (_related is EqualUnmodifiableListView) return _related;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_related);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItemDtails(id: $id, imageUrl: $imageUrl, type: $type, related: $related)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemDtails'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('related', related));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemDtailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._related, _related));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imageUrl, type,
      const DeepCollectionEquality().hash(_related));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemDtailsImplCopyWith<_$ItemDtailsImpl> get copyWith =>
      __$$ItemDtailsImplCopyWithImpl<_$ItemDtailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemDtailsImplToJson(
      this,
    );
  }
}

abstract class _ItemDtails implements ItemDtails {
  const factory _ItemDtails(
      {required final int id,
      required final String imageUrl,
      required final String type,
      required final List<Item> related}) = _$ItemDtailsImpl;

  factory _ItemDtails.fromJson(Map<String, dynamic> json) =
      _$ItemDtailsImpl.fromJson;

  @override
  int get id;
  @override
  String get imageUrl;
  @override
  String get type;
  @override
  List<Item> get related;
  @override
  @JsonKey(ignore: true)
  _$$ItemDtailsImplCopyWith<_$ItemDtailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connector_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectorModel {
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get capacity => throw _privateConstructorUsedError;
  ConnectorStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectorModelCopyWith<ConnectorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectorModelCopyWith<$Res> {
  factory $ConnectorModelCopyWith(
          ConnectorModel value, $Res Function(ConnectorModel) then) =
      _$ConnectorModelCopyWithImpl<$Res, ConnectorModel>;
  @useResult
  $Res call({String name, double price, int capacity, ConnectorStatus status});
}

/// @nodoc
class _$ConnectorModelCopyWithImpl<$Res, $Val extends ConnectorModel>
    implements $ConnectorModelCopyWith<$Res> {
  _$ConnectorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? capacity = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ConnectorStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConnectorModelCopyWith<$Res>
    implements $ConnectorModelCopyWith<$Res> {
  factory _$$_ConnectorModelCopyWith(
          _$_ConnectorModel value, $Res Function(_$_ConnectorModel) then) =
      __$$_ConnectorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double price, int capacity, ConnectorStatus status});
}

/// @nodoc
class __$$_ConnectorModelCopyWithImpl<$Res>
    extends _$ConnectorModelCopyWithImpl<$Res, _$_ConnectorModel>
    implements _$$_ConnectorModelCopyWith<$Res> {
  __$$_ConnectorModelCopyWithImpl(
      _$_ConnectorModel _value, $Res Function(_$_ConnectorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? capacity = null,
    Object? status = null,
  }) {
    return _then(_$_ConnectorModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ConnectorStatus,
    ));
  }
}

/// @nodoc

class _$_ConnectorModel implements _ConnectorModel {
  const _$_ConnectorModel(
      {required this.name,
      required this.price,
      required this.capacity,
      required this.status});

  @override
  final String name;
  @override
  final double price;
  @override
  final int capacity;
  @override
  final ConnectorStatus status;

  @override
  String toString() {
    return 'ConnectorModel(name: $name, price: $price, capacity: $capacity, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectorModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, price, capacity, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectorModelCopyWith<_$_ConnectorModel> get copyWith =>
      __$$_ConnectorModelCopyWithImpl<_$_ConnectorModel>(this, _$identity);
}

abstract class _ConnectorModel implements ConnectorModel {
  const factory _ConnectorModel(
      {required final String name,
      required final double price,
      required final int capacity,
      required final ConnectorStatus status}) = _$_ConnectorModel;

  @override
  String get name;
  @override
  double get price;
  @override
  int get capacity;
  @override
  ConnectorStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectorModelCopyWith<_$_ConnectorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

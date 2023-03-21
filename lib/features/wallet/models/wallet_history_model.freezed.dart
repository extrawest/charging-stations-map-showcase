// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletHistoryModel _$WalletHistoryModelFromJson(Map<String, dynamic> json) {
  return _WalletHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$WalletHistoryModel {
  DateTime get datetimeStarted => throw _privateConstructorUsedError;
  DateTime get datetimeFinished => throw _privateConstructorUsedError;
  double get bill => throw _privateConstructorUsedError;
  double get consumedKwh => throw _privateConstructorUsedError;
  String get stationName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletHistoryModelCopyWith<WalletHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletHistoryModelCopyWith<$Res> {
  factory $WalletHistoryModelCopyWith(
          WalletHistoryModel value, $Res Function(WalletHistoryModel) then) =
      _$WalletHistoryModelCopyWithImpl<$Res, WalletHistoryModel>;
  @useResult
  $Res call(
      {DateTime datetimeStarted,
      DateTime datetimeFinished,
      double bill,
      double consumedKwh,
      String stationName});
}

/// @nodoc
class _$WalletHistoryModelCopyWithImpl<$Res, $Val extends WalletHistoryModel>
    implements $WalletHistoryModelCopyWith<$Res> {
  _$WalletHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetimeStarted = null,
    Object? datetimeFinished = null,
    Object? bill = null,
    Object? consumedKwh = null,
    Object? stationName = null,
  }) {
    return _then(_value.copyWith(
      datetimeStarted: null == datetimeStarted
          ? _value.datetimeStarted
          : datetimeStarted // ignore: cast_nullable_to_non_nullable
              as DateTime,
      datetimeFinished: null == datetimeFinished
          ? _value.datetimeFinished
          : datetimeFinished // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bill: null == bill
          ? _value.bill
          : bill // ignore: cast_nullable_to_non_nullable
              as double,
      consumedKwh: null == consumedKwh
          ? _value.consumedKwh
          : consumedKwh // ignore: cast_nullable_to_non_nullable
              as double,
      stationName: null == stationName
          ? _value.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WalletHistoryModelCopyWith<$Res>
    implements $WalletHistoryModelCopyWith<$Res> {
  factory _$$_WalletHistoryModelCopyWith(_$_WalletHistoryModel value,
          $Res Function(_$_WalletHistoryModel) then) =
      __$$_WalletHistoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime datetimeStarted,
      DateTime datetimeFinished,
      double bill,
      double consumedKwh,
      String stationName});
}

/// @nodoc
class __$$_WalletHistoryModelCopyWithImpl<$Res>
    extends _$WalletHistoryModelCopyWithImpl<$Res, _$_WalletHistoryModel>
    implements _$$_WalletHistoryModelCopyWith<$Res> {
  __$$_WalletHistoryModelCopyWithImpl(
      _$_WalletHistoryModel _value, $Res Function(_$_WalletHistoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetimeStarted = null,
    Object? datetimeFinished = null,
    Object? bill = null,
    Object? consumedKwh = null,
    Object? stationName = null,
  }) {
    return _then(_$_WalletHistoryModel(
      datetimeStarted: null == datetimeStarted
          ? _value.datetimeStarted
          : datetimeStarted // ignore: cast_nullable_to_non_nullable
              as DateTime,
      datetimeFinished: null == datetimeFinished
          ? _value.datetimeFinished
          : datetimeFinished // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bill: null == bill
          ? _value.bill
          : bill // ignore: cast_nullable_to_non_nullable
              as double,
      consumedKwh: null == consumedKwh
          ? _value.consumedKwh
          : consumedKwh // ignore: cast_nullable_to_non_nullable
              as double,
      stationName: null == stationName
          ? _value.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_WalletHistoryModel extends _WalletHistoryModel {
  const _$_WalletHistoryModel(
      {required this.datetimeStarted,
      required this.datetimeFinished,
      required this.bill,
      required this.consumedKwh,
      required this.stationName})
      : super._();

  factory _$_WalletHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_WalletHistoryModelFromJson(json);

  @override
  final DateTime datetimeStarted;
  @override
  final DateTime datetimeFinished;
  @override
  final double bill;
  @override
  final double consumedKwh;
  @override
  final String stationName;

  @override
  String toString() {
    return 'WalletHistoryModel(datetimeStarted: $datetimeStarted, datetimeFinished: $datetimeFinished, bill: $bill, consumedKwh: $consumedKwh, stationName: $stationName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletHistoryModel &&
            (identical(other.datetimeStarted, datetimeStarted) ||
                other.datetimeStarted == datetimeStarted) &&
            (identical(other.datetimeFinished, datetimeFinished) ||
                other.datetimeFinished == datetimeFinished) &&
            (identical(other.bill, bill) || other.bill == bill) &&
            (identical(other.consumedKwh, consumedKwh) ||
                other.consumedKwh == consumedKwh) &&
            (identical(other.stationName, stationName) ||
                other.stationName == stationName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, datetimeStarted,
      datetimeFinished, bill, consumedKwh, stationName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletHistoryModelCopyWith<_$_WalletHistoryModel> get copyWith =>
      __$$_WalletHistoryModelCopyWithImpl<_$_WalletHistoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletHistoryModelToJson(
      this,
    );
  }
}

abstract class _WalletHistoryModel extends WalletHistoryModel {
  const factory _WalletHistoryModel(
      {required final DateTime datetimeStarted,
      required final DateTime datetimeFinished,
      required final double bill,
      required final double consumedKwh,
      required final String stationName}) = _$_WalletHistoryModel;
  const _WalletHistoryModel._() : super._();

  factory _WalletHistoryModel.fromJson(Map<String, dynamic> json) =
      _$_WalletHistoryModel.fromJson;

  @override
  DateTime get datetimeStarted;
  @override
  DateTime get datetimeFinished;
  @override
  double get bill;
  @override
  double get consumedKwh;
  @override
  String get stationName;
  @override
  @JsonKey(ignore: true)
  _$$_WalletHistoryModelCopyWith<_$_WalletHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

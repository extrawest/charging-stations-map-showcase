// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletModel _$WalletModelFromJson(Map<String, dynamic> json) {
  return _WalletModel.fromJson(json);
}

/// @nodoc
mixin _$WalletModel {
  double get balance => throw _privateConstructorUsedError;
  List<WalletHistoryModel> get history => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletModelCopyWith<WalletModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletModelCopyWith<$Res> {
  factory $WalletModelCopyWith(
          WalletModel value, $Res Function(WalletModel) then) =
      _$WalletModelCopyWithImpl<$Res, WalletModel>;
  @useResult
  $Res call({double balance, List<WalletHistoryModel> history});
}

/// @nodoc
class _$WalletModelCopyWithImpl<$Res, $Val extends WalletModel>
    implements $WalletModelCopyWith<$Res> {
  _$WalletModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? history = null,
  }) {
    return _then(_value.copyWith(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<WalletHistoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WalletModelCopyWith<$Res>
    implements $WalletModelCopyWith<$Res> {
  factory _$$_WalletModelCopyWith(
          _$_WalletModel value, $Res Function(_$_WalletModel) then) =
      __$$_WalletModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double balance, List<WalletHistoryModel> history});
}

/// @nodoc
class __$$_WalletModelCopyWithImpl<$Res>
    extends _$WalletModelCopyWithImpl<$Res, _$_WalletModel>
    implements _$$_WalletModelCopyWith<$Res> {
  __$$_WalletModelCopyWithImpl(
      _$_WalletModel _value, $Res Function(_$_WalletModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? history = null,
  }) {
    return _then(_$_WalletModel(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      history: null == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<WalletHistoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletModel implements _WalletModel {
  const _$_WalletModel(
      {required this.balance, required final List<WalletHistoryModel> history})
      : _history = history;

  factory _$_WalletModel.fromJson(Map<String, dynamic> json) =>
      _$$_WalletModelFromJson(json);

  @override
  final double balance;
  final List<WalletHistoryModel> _history;
  @override
  List<WalletHistoryModel> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  String toString() {
    return 'WalletModel(balance: $balance, history: $history)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletModel &&
            (identical(other.balance, balance) || other.balance == balance) &&
            const DeepCollectionEquality().equals(other._history, _history));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, balance, const DeepCollectionEquality().hash(_history));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletModelCopyWith<_$_WalletModel> get copyWith =>
      __$$_WalletModelCopyWithImpl<_$_WalletModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletModelToJson(
      this,
    );
  }
}

abstract class _WalletModel implements WalletModel {
  const factory _WalletModel(
      {required final double balance,
      required final List<WalletHistoryModel> history}) = _$_WalletModel;

  factory _WalletModel.fromJson(Map<String, dynamic> json) =
      _$_WalletModel.fromJson;

  @override
  double get balance;
  @override
  List<WalletHistoryModel> get history;
  @override
  @JsonKey(ignore: true)
  _$$_WalletModelCopyWith<_$_WalletModel> get copyWith =>
      throw _privateConstructorUsedError;
}

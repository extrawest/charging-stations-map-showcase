// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_station_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavouritesHistoryModel {
  List<StationModel> get stations => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavouritesHistoryModelCopyWith<FavouritesHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesHistoryModelCopyWith<$Res> {
  factory $FavouritesHistoryModelCopyWith(FavouritesHistoryModel value,
          $Res Function(FavouritesHistoryModel) then) =
      _$FavouritesHistoryModelCopyWithImpl<$Res, FavouritesHistoryModel>;
  @useResult
  $Res call({List<StationModel> stations});
}

/// @nodoc
class _$FavouritesHistoryModelCopyWithImpl<$Res,
        $Val extends FavouritesHistoryModel>
    implements $FavouritesHistoryModelCopyWith<$Res> {
  _$FavouritesHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stations = null,
  }) {
    return _then(_value.copyWith(
      stations: null == stations
          ? _value.stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<StationModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavouritesHistoryModellCopyWith<$Res>
    implements $FavouritesHistoryModelCopyWith<$Res> {
  factory _$$_FavouritesHistoryModellCopyWith(_$_FavouritesHistoryModell value,
          $Res Function(_$_FavouritesHistoryModell) then) =
      __$$_FavouritesHistoryModellCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StationModel> stations});
}

/// @nodoc
class __$$_FavouritesHistoryModellCopyWithImpl<$Res>
    extends _$FavouritesHistoryModelCopyWithImpl<$Res,
        _$_FavouritesHistoryModell>
    implements _$$_FavouritesHistoryModellCopyWith<$Res> {
  __$$_FavouritesHistoryModellCopyWithImpl(_$_FavouritesHistoryModell _value,
      $Res Function(_$_FavouritesHistoryModell) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stations = null,
  }) {
    return _then(_$_FavouritesHistoryModell(
      stations: null == stations
          ? _value._stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<StationModel>,
    ));
  }
}

/// @nodoc

class _$_FavouritesHistoryModell implements _FavouritesHistoryModell {
  const _$_FavouritesHistoryModell({required final List<StationModel> stations})
      : _stations = stations;

  final List<StationModel> _stations;
  @override
  List<StationModel> get stations {
    if (_stations is EqualUnmodifiableListView) return _stations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stations);
  }

  @override
  String toString() {
    return 'FavouritesHistoryModel(stations: $stations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavouritesHistoryModell &&
            const DeepCollectionEquality().equals(other._stations, _stations));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavouritesHistoryModellCopyWith<_$_FavouritesHistoryModell>
      get copyWith =>
          __$$_FavouritesHistoryModellCopyWithImpl<_$_FavouritesHistoryModell>(
              this, _$identity);
}

abstract class _FavouritesHistoryModell implements FavouritesHistoryModel {
  const factory _FavouritesHistoryModell(
          {required final List<StationModel> stations}) =
      _$_FavouritesHistoryModell;

  @override
  List<StationModel> get stations;
  @override
  @JsonKey(ignore: true)
  _$$_FavouritesHistoryModellCopyWith<_$_FavouritesHistoryModell>
      get copyWith => throw _privateConstructorUsedError;
}

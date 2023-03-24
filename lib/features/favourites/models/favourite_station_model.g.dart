// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_station_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavouritesHistoryModelAdapter
    extends TypeAdapter<FavouritesHistoryModel> {
  @override
  final int typeId = 0;

  @override
  FavouritesHistoryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavouritesHistoryModel(
      stationIds: (fields[0] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, FavouritesHistoryModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.stationIds);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavouritesHistoryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

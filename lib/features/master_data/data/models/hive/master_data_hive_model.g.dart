// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_data_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MasterDataHiveModelAdapter extends TypeAdapter<MasterDataHiveModel> {
  @override
  final int typeId = 5;

  @override
  MasterDataHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MasterDataHiveModel(
      data: (fields[0] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, MasterDataHiveModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MasterDataHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

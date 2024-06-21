// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_dto_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LoginDTOHiveModelAdapter extends TypeAdapter<LoginDTOHiveModel> {
  @override
  final int typeId = 4;

  @override
  LoginDTOHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LoginDTOHiveModel(
      data: fields[0] as LoginDataHiveModel?,
      message: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, LoginDTOHiveModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.data)
      ..writeByte(1)
      ..write(obj.message);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginDTOHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

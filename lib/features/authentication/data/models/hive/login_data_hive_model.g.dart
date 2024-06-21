// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LoginDataHiveModelAdapter extends TypeAdapter<LoginDataHiveModel> {
  @override
  final int typeId = 3;

  @override
  LoginDataHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LoginDataHiveModel(
      user: fields[0] as UserHiveModel?,
      institution: fields[1] as InstitutionHiveModel?,
      token: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, LoginDataHiveModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.user)
      ..writeByte(1)
      ..write(obj.institution)
      ..writeByte(2)
      ..write(obj.token);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginDataHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

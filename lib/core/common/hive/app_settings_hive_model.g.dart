// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppSettingsHiveModelAdapter extends TypeAdapter<AppSettingsHiveModel> {
  @override
  final int typeId = 0;

  @override
  AppSettingsHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppSettingsHiveModel(
      firstTime: fields[0] as bool,
      goHome: fields[1] as bool,
      server: fields[2] as bool,
      user: fields[3] as String?,
      fingerPrintUser: fields[4] as String?,
      languageCode: fields[5] as String?,
      country: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AppSettingsHiveModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.firstTime)
      ..writeByte(1)
      ..write(obj.goHome)
      ..writeByte(2)
      ..write(obj.server)
      ..writeByte(3)
      ..write(obj.user)
      ..writeByte(4)
      ..write(obj.fingerPrintUser)
      ..writeByte(5)
      ..write(obj.languageCode)
      ..writeByte(6)
      ..write(obj.country);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppSettingsHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

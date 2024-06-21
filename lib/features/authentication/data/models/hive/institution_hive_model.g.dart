// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'institution_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InstitutionHiveModelAdapter extends TypeAdapter<InstitutionHiveModel> {
  @override
  final int typeId = 2;

  @override
  InstitutionHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InstitutionHiveModel(
      id: fields[0] as int?,
      instituteName: fields[1] as String?,
      instituteDisplayName: fields[2] as String?,
      primaryPhoneNo: fields[3] as String?,
      primaryEmail: fields[4] as String?,
      address: fields[5] as String?,
      instituteEsdDate: fields[6] as String?,
      panNo: fields[7] as String?,
      website: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, InstitutionHiveModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.instituteName)
      ..writeByte(2)
      ..write(obj.instituteDisplayName)
      ..writeByte(3)
      ..write(obj.primaryPhoneNo)
      ..writeByte(4)
      ..write(obj.primaryEmail)
      ..writeByte(5)
      ..write(obj.address)
      ..writeByte(6)
      ..write(obj.instituteEsdDate)
      ..writeByte(7)
      ..write(obj.panNo)
      ..writeByte(8)
      ..write(obj.website);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InstitutionHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

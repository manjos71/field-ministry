// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visit.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VisitAdapter extends TypeAdapter<Visit> {
  @override
  final int typeId = 2;

  @override
  Visit read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Visit(
      id: fields[0] as String,
      date: fields[1] as DateTime,
      status: fields[2] as VisitStatus,
      notes: fields[3] as String?,
      personName: fields[4] as String?,
      phoneNumber: fields[5] as String?,
      personCategory: fields[6] as PersonCategory?,
      personSkinTone: fields[7] as SkinTone?,
      gender: fields[8] as Gender?,
    );
  }

  @override
  void write(BinaryWriter writer, Visit obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.date)
      ..writeByte(2)
      ..write(obj.status)
      ..writeByte(3)
      ..write(obj.notes)
      ..writeByte(4)
      ..write(obj.personName)
      ..writeByte(5)
      ..write(obj.phoneNumber)
      ..writeByte(6)
      ..write(obj.personCategory)
      ..writeByte(7)
      ..write(obj.personSkinTone)
      ..writeByte(8)
      ..write(obj.gender);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VisitAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

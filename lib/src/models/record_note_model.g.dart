// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_note_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecordNoteModelAdapter extends TypeAdapter<RecordNoteModel> {
  @override
  final int typeId = 3;

  @override
  RecordNoteModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RecordNoteModel(
      id: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, RecordNoteModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecordNoteModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

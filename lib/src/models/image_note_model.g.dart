// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_note_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ImageNoteModelAdapter extends TypeAdapter<ImageNoteModel> {
  @override
  final int typeId = 2;

  @override
  ImageNoteModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImageNoteModel(
      id: fields[0] as String,
      imagesList: (fields[1] as List?)?.cast<Image>(),
    );
  }

  @override
  void write(BinaryWriter writer, ImageNoteModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.imagesList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageNoteModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

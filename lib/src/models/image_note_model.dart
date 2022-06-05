import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'image_note_model.g.dart';

@HiveType(typeId: 2)
class ImageNoteModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final List<Image>? imagesList;

  ImageNoteModel(
      {
      // required this.title,
      required this.id,
      required this.imagesList});
}
  // final Image a = Image(image: image);

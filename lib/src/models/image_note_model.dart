import 'package:flutter/material.dart';

import 'package:hive/hive.dart';
// part 'image_note_model.g.dart';

@HiveType(typeId: 02)
class ImageNoteModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final Image image;

  ImageNoteModel({required this.title, required this.id, required this.image});
}

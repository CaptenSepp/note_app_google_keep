import 'package:flutter/material.dart';

class ImageNoteModel {
  final String id;
  final String title;

  final List<Image> imagesList;

  ImageNoteModel(
      {required this.title, required this.id, required this.imagesList});
}

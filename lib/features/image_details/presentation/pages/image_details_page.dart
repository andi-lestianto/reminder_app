import 'dart:io';

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageDetailsPage extends StatelessWidget {
  final String imagePath;
  const ImageDetailsPage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ImageDetailsView(imagePath: imagePath);
  }
}

class ImageDetailsView extends StatelessWidget {
  final String imagePath;
  const ImageDetailsView({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return PhotoView(
      heroAttributes: const PhotoViewHeroAttributes(tag: 'reminder_image'),
      backgroundDecoration: BoxDecoration(color: Colors.white),
      imageProvider: FileImage(File(imagePath)),
    );
  }
}

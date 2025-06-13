import 'dart:io';

import 'package:flutter/material.dart';

import '../../../../../core/extensions/context_extensions.dart';

class SelectedImage extends StatelessWidget {
  const SelectedImage({super.key, required this.image});

  final File? image;

  @override
  Widget build(BuildContext context) {
    if (image == null) {
      return const SizedBox(
        width: double.infinity,
        child: Center(child: Text('No image selected')),
      );
    }
    return SizedBox(
      width: double.infinity,
      child: ClipRRect(
        borderRadius: context.defaultBorderRadius,
        child: Image.file(
          image!,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

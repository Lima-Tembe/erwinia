import 'dart:io';
import 'package:flutter/cupertino.dart';

class RoundedImageFromFile extends StatelessWidget {
  final File imageFile;
  final double width;
  final double height;
  final double borderRadius;
  const RoundedImageFromFile({
    super.key,
    required this.imageFile,
    required this.width,
    required this.height,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.file(
        imageFile,
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}

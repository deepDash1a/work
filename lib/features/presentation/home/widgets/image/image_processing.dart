import 'package:flutter/material.dart';
import 'package:work/core/widgets/texts.dart';

class ImageProcessing extends StatelessWidget {
  const ImageProcessing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BoldText18dark(
          text: 'Image Processing',
        ),
      ),
    );
  }
}

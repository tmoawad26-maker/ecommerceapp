import 'package:flutter/material.dart';

class CustomElipsesWidget extends StatelessWidget {
  const CustomElipsesWidget({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 457,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.fill),
      ),
    );
  }
}

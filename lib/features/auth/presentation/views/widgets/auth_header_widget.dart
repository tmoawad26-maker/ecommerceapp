import 'package:ecommerceapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class AuthHeaderWidget extends StatelessWidget {
  const AuthHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 97, right: 96),
      child: Column(
        children: [
          SizedBox(height: 85),
          Image.asset(
            Assets.imagesRoute,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

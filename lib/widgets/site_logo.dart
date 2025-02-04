import 'package:flutter/material.dart';
import 'package:my_flutter_web_app/constant/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Text("Ariana Grande",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: CustomColor.yellowSecondary)),
    );
  }
}

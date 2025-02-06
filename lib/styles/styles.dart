import 'package:flutter/material.dart';
import 'package:my_flutter_web_app/constant/colors.dart';

BoxDecoration kHederDecoration = BoxDecoration(
  gradient: const LinearGradient(colors: [
    WickedColors.scaffoldBg,
    WickedColors.navbarLightGreen,
    WickedColors.textPrimary,
    WickedColors.navbarPink
  ], stops: [
    0.0,
    0.5,
    0.6,
    0.8
  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
);

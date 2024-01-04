import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ui_challenge/core/utils/helper/color_helper.dart';

abstract class ChallengeStyleHelper {
  static const TextStyle textStyle24w800 =
      TextStyle(fontSize: 24, fontWeight: FontWeight.w800);
  static const TextStyle textStyle14w500 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: ChallengeColorHelper.cDarkTextColor,
  );
  static const TextStyle textStyle22CPinkyOrange =
      TextStyle(color: ChallengeColorHelper.cPinkyOrangeColor, fontSize: 22);

  static TextStyle textStyle15CDarkPinkyOrange =
  TextStyle(
      color: ChallengeColorHelper.cDarkPinkyOrangeColor,
      fontSize: 15);
}

import 'package:flutter/material.dart';
import 'package:leqaa/core/utils/color_manager.dart';
import 'package:leqaa/core/utils/font_manager.dart';

abstract class Styles {
  static const TextStyle styleRegular10 = TextStyle(
    color: ColorManager.mediumGrayColor,
    fontSize: FontSizeManager.s10,
    fontWeight: FontWeightManager.regular,
    fontFamily: FontType.kAlmarai,
  );

  static const TextStyle styleLight12 = TextStyle(
    color: ColorManager.silverGray,
    fontSize: FontSizeManager.s12,
    fontWeight: FontWeightManager.light,
    fontFamily: FontType.kAlmarai,
  );

  static const TextStyle styleRegular12 = TextStyle(
    color: ColorManager.mainColor,
    fontSize: FontSizeManager.s16,
    fontWeight: FontWeightManager.regular,
    fontFamily: FontType.kAlmarai,
  );

  static const TextStyle styleBold12 = TextStyle(
    color: ColorManager.mainColor,
    fontSize: FontSizeManager.s12,
    fontWeight: FontWeightManager.bold,
    fontFamily: FontType.kAlmarai,
  );

  static const TextStyle styleRegular14 = TextStyle(
    color: ColorManager.charcoalGrayColor,
    fontSize: FontSizeManager.s14,
    fontWeight: FontWeightManager.regular,
    fontFamily: FontType.kAlmarai,
  );

  static const TextStyle styleBold14 = TextStyle(
    color: ColorManager.blackColor,
    fontSize: FontSizeManager.s14,
    fontWeight: FontWeightManager.bold,
    fontFamily: FontType.kAlmarai,
  );

  static const TextStyle styleRegular15 = TextStyle(
    color: ColorManager.darkGray2Color,
    fontSize: FontSizeManager.s15,
    fontWeight: FontWeightManager.regular,
    fontFamily: FontType.kAlmarai,
  );

  static const TextStyle styleRegular16 = TextStyle(
    color: ColorManager.whiteColor,
    fontSize: FontSizeManager.s16,
    fontWeight: FontWeightManager.regular,
    fontFamily: FontType.kAlmarai,
  );

  static const TextStyle styleBold16 = TextStyle(
    color: ColorManager.silverGray,
    fontSize: FontSizeManager.s16,
    fontWeight: FontWeightManager.bold,
    fontFamily: FontType.kAlmarai,
  );

  static const TextStyle styleBold18 = TextStyle(
    color: ColorManager.whiteColor,
    fontSize: FontSizeManager.s18,
    fontWeight: FontWeightManager.bold,
    fontFamily: FontType.kAlmarai,
  );

  static const TextStyle styleHeavy18 = TextStyle(
    color: ColorManager.mainColor,
    fontSize: FontSizeManager.s18,
    fontWeight: FontWeightManager.heavy,
    fontFamily: FontType.kAlmarai,
  );

  static const TextStyle styleBold20 = TextStyle(
    color: ColorManager.mainColor,
    fontSize: FontSizeManager.s20,
    fontWeight: FontWeightManager.bold,
    fontFamily: FontType.kAlmarai,
  );

  static const TextStyle styleBold30 = TextStyle(
    color: ColorManager.secondaryBlueColor,
    fontSize: FontSizeManager.s30,
    fontWeight: FontWeightManager.bold,
    fontFamily: FontType.kAlmarai,
  );
}

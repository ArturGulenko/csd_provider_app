import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData theme() {
  return ThemeData(
    textTheme: textTheme(),
    appBarTheme: appBarTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    buttonTheme: buttonTheme(),
  );
}

buttonTheme() {
  return ButtonThemeData(
    buttonColor: kPrimaryBlueColor,
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
  );
}

inputDecorationTheme() {
  return InputDecorationTheme(
    isDense: true,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 15,
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: kBorderColor),
        gapPadding: 5),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: kBorderColor),
        gapPadding: 5),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(color: kPrimaryErrorColor),
      gapPadding: 5,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(color: kPrimaryErrorColor),
      gapPadding: 5,
    ),
    hintStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: kInputHintColor,
    ),
    errorStyle: const TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: kPrimaryErrorColor,
      height: 0.5,
    ),
  );
}

appBarTheme() {
  return const AppBarTheme(
      color: kBackgroundColor,
      elevation: 0,
      iconTheme: IconThemeData(color: kAppBarIconsColor),
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: kAppBarIconsColor,
        fontSize: 17,
        fontWeight: FontWeight.w600,
      ));
}

textTheme() {
  return const TextTheme(
      bodySmall: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: kBodyTextColor,
  ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: kBodyTextColor,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: kBodyTextColor,
    ),
    labelSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: kBodyTextColor,
    ),
    labelMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: kBodyTextColor,
    ),
    labelLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: kBodyTextColor,
    ),
  );
}

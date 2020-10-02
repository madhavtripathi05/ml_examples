import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

final primaryColor = Color(0xff6c63ff);
final nunitoFont = GoogleFonts.nunito().fontFamily;
final firaCodeFont = GoogleFonts.firaCode().fontFamily;
final quoteFont = GoogleFonts.lobster().fontFamily;
final primaryFont = GoogleFonts.notoSans().fontFamily;
final kBoldText =
    TextStyle(fontWeight: FontWeight.bold, fontSize: Get.width > 500 ? 22 : 18);
final kBoldTextGreen = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.green,
    fontSize: Get.width > 500 ? 22 : 18);
final kCodeStyle = TextStyle(fontFamily: firaCodeFont);
final kQuoteTextStyle = TextStyle(
  fontFamily: quoteFont,
  fontSize: 18,
);

final kLightTheme =
    ThemeData(primaryColor: primaryColor, fontFamily: primaryFont);
final kDarkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    fontFamily: primaryFont);

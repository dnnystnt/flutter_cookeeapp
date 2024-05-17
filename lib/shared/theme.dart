import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Determine the Color First
Color kPrimaryColor = Color(0xff5A4CBE);
Color kTitleColor = Color(0xff202020);
Color kDescColor = Color(0xff6C7E95);
Color kBackgroundColor = Color(0xffF6F8FC);
Color kBackgroundOneColor = Color(0xffEAEAEA);
Color kHintTextColor = Color(0xffADADAD);
Color kWhiteColor = Color(0xffffffff);
Color kTransparentColor = Colors.transparent;

// Determine the TextStyle
TextStyle kTitleTextStyle = GoogleFonts.poppins(
  color: kTitleColor,
);

TextStyle kDescTextStyle = GoogleFonts.poppins(
  color: kDescColor,
);

TextStyle kHintTextStyle = GoogleFonts.poppins(
  color: kHintTextColor,
);

TextStyle kWhiteTextStyle = GoogleFonts.poppins(
  color: kBackgroundColor,
);

TextStyle kPrimaryTextStyle = GoogleFonts.poppins(
  color: kPrimaryColor,
);

// Determine the FontWeight
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w600;
FontWeight extraBold = FontWeight.w700;
FontWeight black = FontWeight.w800;

import 'package:basic/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

ThemeData lightThemeData(BuildContext context) {
  final theme = Theme.of(context).textTheme;
  return ThemeData.light().copyWith(
    textTheme: GoogleFonts.interTextTheme(theme)
        .apply(bodyColor: kContentColorLightTheme)
        .copyWith(
          headline1: GoogleFonts.ptSans(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: kContentColorLightTheme,
          ),
          headline2: GoogleFonts.roboto(
            fontSize: 20.sp,
            fontWeight: FontWeight.normal,
            color: kContentColorLightTheme,
          ),
          headline3: GoogleFonts.poppins(
            fontSize: 22.sp,
            fontWeight: FontWeight.normal,
            color: kContentColorLightTheme,
          ),
          headline4: GoogleFonts.montserrat(
            fontSize: 22.sp,
            fontWeight: FontWeight.w700,
            color: kContentColorLightTheme,
          ),
          headline5: GoogleFonts.concertOne(
            fontSize: 22.sp,
            fontWeight: FontWeight.normal,
            color: kContentColorLightTheme,
          ),
          headline6: GoogleFonts.barlowCondensed(
            fontSize: 22.sp,
            fontWeight: FontWeight.normal,
            color: kContentColorLightTheme,
          ),
        ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: kContentColorDarkTheme)
        .copyWith(
          headline1: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: kContentColorDarkTheme,
          ),
          headline2: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: kContentColorDarkTheme,
          ),
        ),
  );
}

final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);

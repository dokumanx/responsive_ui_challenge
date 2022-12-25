import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CustomColors {
  static const Color primary = Color(0xFFFFFFFF);
  //button
  static const Color buttonColor1 = Color(0xFF81E6D9);
  static const Color buttonColor2 = Color(0xFF319795);
  static const Color buttonColor3 = Color(0xFFE5E5E5);
  static const Color buttonColor4 = Color(0xFFE6FFFA);

  //linear gradient colors
  static const Color linearGradientColor1 = Color(0xFF319795);
  static const Color linearGradientColor2 = Color(0xFF3182CE);

  static const Color shapeLinearGradientColor1 = Color(0xFFEBF4FF);
  static const Color shapeLinearGradientColor2 = Color(0xFFE6FFFA);

  //text
  static const Color textColor1 = Color(0xFF2D3748);
  static const Color textColor2 = Color(0xFF718096);
  static const Color textColor3 = Color(0xFF4A5568);

  //border color
  static const Color borderColor1 = Color(0xFFCBD5E0);
  static const Color borderColor2 = Color(0xFF707070);

  //shape color
  static const Color shapeColor1 = Color(0xFFF7FAFC);
}

class CustomTheme {
  static TextTheme textTheme(BuildContext context) => TextTheme(
        ///number style
        headline1: TextStyle(
          fontSize: ResponsiveValue(
            context,
            defaultValue: 130.0,
            valueWhen: const [
              Condition.largerThan(
                name: DESKTOP,
                value: 130.0,
              )
            ],
          ).value,
          fontWeight: FontWeight.normal,
          color: CustomColors.textColor2,
          fontFamily: 'Lato',
        ),

        /// header style
        headline2: TextStyle(
          fontSize: ResponsiveValue(
            context,
            defaultValue: 42.0,
            valueWhen: const [
              Condition.largerThan(
                name: DESKTOP,
                value: 65.0,
              )
            ],
          ).value,
          fontWeight: FontWeight.w500,
          color: CustomColors.textColor1,
          fontFamily: 'Lato',
        ),

        /// sub header style
        headline6: TextStyle(
          fontSize: ResponsiveValue(
            context,
            defaultValue: 21.0,
            valueWhen: const [
              Condition.largerThan(
                name: DESKTOP,
                value: 40.0,
              )
            ],
          ).value,
          fontWeight: FontWeight.w500,
          color: CustomColors.textColor3,
          fontFamily: 'Lato',
        ),

        /// number description style
        bodyText1: TextStyle(
          fontSize: ResponsiveValue(
            context,
            defaultValue: 15.75,
            valueWhen: const [
              Condition.largerThan(
                name: DESKTOP,
                value: 30.0,
              )
            ],
          ).value,
          fontWeight: FontWeight.normal,
          color: CustomColors.textColor2,
          fontFamily: 'Lato',
        ),

        /// selectable AND text button style
        subtitle1: TextStyle(
          fontSize: ResponsiveValue(
            context,
            defaultValue: 14.0,
            valueWhen: const [
              Condition.largerThan(
                name: DESKTOP,
                value: 14.0,
              )
            ],
          ).value,
          fontWeight: FontWeight.w600,
          color: CustomColors.buttonColor2,
          fontFamily: 'Lato',
        ),

        /// filled selectable button style
        subtitle2: TextStyle(
          fontSize: ResponsiveValue(
            context,
            defaultValue: 14.0,
            valueWhen: const [
              Condition.largerThan(
                name: DESKTOP,
                value: 14.0,
              )
            ],
          ).value,
          fontWeight: FontWeight.w600,
          letterSpacing: .84,
          color: CustomColors.buttonColor4,
          fontFamily: 'Lato',
        ),
      );

  static ThemeData themeData(BuildContext context) =>
      ThemeData(textTheme: textTheme(context));
}

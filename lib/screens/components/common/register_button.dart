import 'package:flutter/material.dart';
import 'package:tomisha_test/constants/string_constants.dart';
import 'package:tomisha_test/extensions/context_extensions.dart';
import 'package:tomisha_test/theme/custom_theme.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        fixedSize: const Size(320, 40),
        textStyle: context.textTheme.subtitle2,
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            CustomColors.linearGradientColor1,
            CustomColors.linearGradientColor2,
          ]),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          width: 320,
          height: 40,
          alignment: Alignment.center,
          child: const Text(
            StringConstants.headerButtonText,
          ),
        ),
      ),
    );
  }
}

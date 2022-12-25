import 'package:flutter/material.dart';
import 'package:tomisha_test/constants/string_constants.dart';
import 'package:tomisha_test/extensions/context_extensions.dart';
import 'package:tomisha_test/theme/custom_theme.dart';

class CustomAppBar extends AppBar {
  CustomAppBar(BuildContext context, {super.key})
      : super(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(12),
            ),
          ),
          backgroundColor: CustomColors.primary,
          actions: [
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                textStyle: MaterialStateProperty.resolveWith(
                  (states) {
                    var style = context.textTheme.subtitle1;

                    if (states.contains(MaterialState.hovered)) {
                      style =
                          style!.copyWith(decoration: TextDecoration.underline);
                    }
                    return style;
                  },
                ),
                overlayColor: MaterialStateProperty.all(Colors.transparent),
              ),
              child: Text(
                StringConstants.login,
                style: context.textTheme.subtitle1,
              ),
            ),
          ],
        );
}

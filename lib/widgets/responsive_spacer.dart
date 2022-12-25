import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveVerticalSpacer extends SizedBox {
  ResponsiveVerticalSpacer(BuildContext context,
      {required double defaultHeight,
      required double responsiveHeight,
      super.key})
      : super(
            height: ResponsiveValue(
          context,
          defaultValue: defaultHeight,
          valueWhen: [
            Condition.largerThan(
              name: DESKTOP,
              value: responsiveHeight,
            ),
          ],
        ).value);
}

class ResponsiveHorizontalSpacer extends SizedBox {
  ResponsiveHorizontalSpacer(BuildContext context,
      {required double defaultWidth,
      required double responsiveWidth,
      super.key})
      : super(
            width: ResponsiveValue(
          context,
          defaultValue: defaultWidth,
          valueWhen: [
            Condition.largerThan(
              name: DESKTOP,
              value: responsiveWidth,
            ),
          ],
        ).value);
}

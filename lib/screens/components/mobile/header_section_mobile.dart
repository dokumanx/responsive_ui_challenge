import 'package:flutter/material.dart';
import 'package:tomisha_test/constants/string_constants.dart';
import 'package:tomisha_test/extensions/context_extensions.dart';
import 'package:tomisha_test/gen/assets.gen.dart';
import 'package:tomisha_test/theme/custom_theme.dart';
import 'package:tomisha_test/widgets/custom_spacer.dart';

class HeaderSectionMobile extends StatelessWidget {
  const HeaderSectionMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 550,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            CustomColors.shapeLinearGradientColor2,
            CustomColors.shapeLinearGradientColor1,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const VerticalSpace(18),
          Text(
            StringConstants.headerText,
            style: context.textTheme.headline2,
            textAlign: TextAlign.center,
          ),
          Assets.illustrations.agreement.svg(),
        ],
      ),
    );
  }
}

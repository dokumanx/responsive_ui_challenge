import 'package:flutter/material.dart';
import 'package:tomisha_test/constants/string_constants.dart';
import 'package:tomisha_test/extensions/context_extensions.dart';
import 'package:tomisha_test/gen/assets.gen.dart';
import 'package:tomisha_test/screens/components/common/custom_clippers.dart';
import 'package:tomisha_test/screens/components/common/register_button.dart';
import 'package:tomisha_test/theme/custom_theme.dart';

class HeaderSectionDesktop extends StatelessWidget {
  const HeaderSectionDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ClipPath(
      clipper: HeaderClipper(),
      child: Container(
        width: width,
        height: 659,
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
        child: Align(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringConstants.headerText,
                    style: context.textTheme.headline2,
                  ),
                  const SizedBox(
                    height: 53,
                  ),
                  const RegisterButton(),
                ],
              ),
              const SizedBox(
                width: 144,
              ),
              ClipOval(
                child: Container(
                  width: 455,
                  height: 455,
                  color: CustomColors.primary,
                  child: Assets.illustrations.agreement.svg(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

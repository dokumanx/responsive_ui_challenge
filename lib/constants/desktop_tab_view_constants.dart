import 'package:flutter_svg/flutter_svg.dart';
import 'package:tomisha_test/constants/string_constants.dart';
import 'package:tomisha_test/gen/assets.gen.dart';

class DesktopTabViewConstants {
  final String header;
  final SvgPicture stepOneIllustration;
  final String stepOneText;
  final SvgPicture stepTwoIllustration;
  final String stepTwoText;
  final SvgPicture stepThreeIllustration;
  final String stepThreeText;

  DesktopTabViewConstants({
    required this.header,
    required this.stepOneIllustration,
    required this.stepOneText,
    required this.stepTwoIllustration,
    required this.stepTwoText,
    required this.stepThreeIllustration,
    required this.stepThreeText,
  });

  factory DesktopTabViewConstants.tabOne() => DesktopTabViewConstants(
        header: StringConstants.selectableOneHeader,
        stepOneIllustration: Assets.illustrations.tab1.step1.svg(
          width: 385,
          height: 253,
        ),
        stepOneText: StringConstants.selectableOneStepOne,
        stepTwoIllustration: Assets.illustrations.tab1.step2.svg(
          width: 325,
          height: 227,
        ),
        stepTwoText: StringConstants.selectableOneStepTwo,
        stepThreeIllustration: Assets.illustrations.tab1.step3.svg(
          width: 502,
          height: 375,
        ),
        stepThreeText: StringConstants.selectableOneStepThree,
      );

  factory DesktopTabViewConstants.tabTwo() => DesktopTabViewConstants(
        header: StringConstants.selectableTwoHeader,
        stepOneIllustration: Assets.illustrations.tab2.step1.svg(
          width: 385,
          height: 253,
        ),
        stepOneText: StringConstants.selectableTwoStepOne,
        stepTwoIllustration: Assets.illustrations.tab2.step2.svg(
          width: 325,
          height: 227,
        ),
        stepTwoText: StringConstants.selectableTwoStepTwo,
        stepThreeIllustration: Assets.illustrations.tab2.step3.svg(
          width: 502,
          height: 375,
        ),
        stepThreeText: StringConstants.selectableTwoStepThree,
      );

  factory DesktopTabViewConstants.tabThree() => DesktopTabViewConstants(
        header: StringConstants.selectableThreeHeader,
        stepOneIllustration: Assets.illustrations.tab3.step1.svg(
          width: 385,
          height: 253,
        ),
        stepOneText: StringConstants.selectableThreeStepOne,
        stepTwoIllustration: Assets.illustrations.tab3.step2.svg(
          width: 325,
          height: 227,
        ),
        stepTwoText: StringConstants.selectableThreeStepTwo,
        stepThreeIllustration: Assets.illustrations.tab3.step3.svg(
          width: 502,
          height: 375,
        ),
        stepThreeText: StringConstants.selectableThreeStepThree,
      );
}

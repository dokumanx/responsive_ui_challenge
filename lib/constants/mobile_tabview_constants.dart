import 'package:flutter_svg/flutter_svg.dart';
import 'package:tomisha_test/constants/string_constants.dart';
import 'package:tomisha_test/gen/assets.gen.dart';

class MobileTabViewConstants {
  final String header;
  final SvgPicture stepOneIllustration;
  final String stepOneText;
  final SvgPicture stepTwoIllustration;
  final String stepTwoText;
  final SvgPicture stepThreeIllustration;
  final String stepThreeText;

  MobileTabViewConstants({
    required this.header,
    required this.stepOneIllustration,
    required this.stepOneText,
    required this.stepTwoIllustration,
    required this.stepTwoText,
    required this.stepThreeIllustration,
    required this.stepThreeText,
  });

  factory MobileTabViewConstants.tabOne() => MobileTabViewConstants(
        header: StringConstants.selectableOneHeader,
        stepOneIllustration: Assets.illustrations.tab1.step1.svg(
          width: 220,
          height: 144,
        ),
        stepOneText: StringConstants.selectableOneStepOne,
        stepTwoIllustration: Assets.illustrations.tab1.step2.svg(
          width: 217,
          height: 148,
        ),
        stepTwoText: StringConstants.selectableOneStepTwo,
        stepThreeIllustration: Assets.illustrations.tab1.step3.svg(
          width: 250,
          height: 190,
        ),
        stepThreeText: StringConstants.selectableOneStepThree,
      );

  factory MobileTabViewConstants.tabTwo() => MobileTabViewConstants(
        header: StringConstants.selectableTwoHeader,
        stepOneIllustration: Assets.illustrations.tab2.step1.svg(
          width: 220,
          height: 144,
        ),
        stepOneText: StringConstants.selectableTwoStepOne,
        stepTwoIllustration: Assets.illustrations.tab2.step2.svg(
          width: 260,
          height: 180,
        ),
        stepTwoText: StringConstants.selectableTwoStepTwo,
        stepThreeIllustration: Assets.illustrations.tab2.step3.svg(
          width: 240,
          height: 196,
        ),
        stepThreeText: StringConstants.selectableTwoStepThree,
      );

  factory MobileTabViewConstants.tabThree() => MobileTabViewConstants(
        header: StringConstants.selectableThreeHeader,
        stepOneIllustration: Assets.illustrations.tab3.step1.svg(
          width: 220,
          height: 144,
        ),
        stepOneText: StringConstants.selectableThreeStepOne,
        stepTwoIllustration: Assets.illustrations.tab3.step2.svg(
          width: 180,
          height: 126,
        ),
        stepTwoText: StringConstants.selectableThreeStepTwo,
        stepThreeIllustration: Assets.illustrations.tab3.step3.svg(
          width: 281,
          height: 210,
        ),
        stepThreeText: StringConstants.selectableThreeStepThree,
      );
}

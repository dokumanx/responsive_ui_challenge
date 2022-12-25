import 'package:flutter/material.dart';
import 'package:tomisha_test/constants/mobile_tabview_constants.dart';
import 'package:tomisha_test/extensions/context_extensions.dart';
import 'package:tomisha_test/screens/components/common/custom_clippers.dart';
import 'package:tomisha_test/theme/custom_theme.dart';
import 'package:tomisha_test/widgets/custom_spacer.dart';

class TabViewMobile extends StatelessWidget {
  final ValueNotifier<int> selectedTab;

  const TabViewMobile({super.key, required this.selectedTab});

  MobileTabViewConstants get tabViewConstants {
    switch (selectedTab.value) {
      case 0:
        return MobileTabViewConstants.tabOne();
      case 1:
        return MobileTabViewConstants.tabTwo();
      case 2:
        return MobileTabViewConstants.tabThree();
      default:
        return MobileTabViewConstants.tabOne();
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return ValueListenableBuilder<int>(
      valueListenable: selectedTab,
      builder: (context, _, child) {
        return Column(
          children: [
            Text(
              tabViewConstants.header,
              style: context.textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            const VerticalSpace(98),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 40,
                    left: -30,
                    child: Container(
                      width: 208,
                      height: 208,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: CustomColors.shapeColor1.withOpacity(.5),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      tabViewConstants.stepOneIllustration,
                      const VerticalSpace(50),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '1. ',
                            style: context.textTheme.headline1?.copyWith(
                              height: 0.1,
                            ),
                          ),
                          Flexible(
                            child: Text(
                              tabViewConstants.stepOneText,
                              style: context.textTheme.bodyText1,
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ClipPath(
              clipper: BodyClipper(),
              child: Container(
                width: width,
                height: 370,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [
                      CustomColors.shapeLinearGradientColor1,
                      CustomColors.shapeLinearGradientColor2,
                    ],
                  ),
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50, right: 40),
                        child: Row(
                          children: [
                            Text(
                              '2. ',
                              style: context.textTheme.headline1?.copyWith(
                                height: 0.3,
                              ),
                            ),
                            Flexible(
                              child: Text(
                                tabViewConstants.stepTwoText,
                                style: context.textTheme.bodyText1,
                                maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const VerticalSpace(24),
                      tabViewConstants.stepTwoIllustration,
                    ],
                  ),
                ),
              ),
            ),
            const VerticalSpace(20),
            Padding(
              padding: const EdgeInsets.only(left: 64),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -60,
                    left: -60,
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: CustomColors.shapeColor1,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            '3. ',
                            style: context.textTheme.headline1?.copyWith(
                              height: 0.8,
                            ),
                          ),
                          Flexible(
                            child: Text(
                              tabViewConstants.stepThreeText,
                              style: context.textTheme.bodyText1,
                              maxLines: 3,
                            ),
                          ),
                        ],
                      ),
                      const VerticalSpace(10),
                      tabViewConstants.stepThreeIllustration,
                    ],
                  ),
                ],
              ),
            ),
            const VerticalSpace(137),
          ],
        );
      },
    );
  }
}

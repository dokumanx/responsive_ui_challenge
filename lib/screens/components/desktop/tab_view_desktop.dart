import 'package:flutter/material.dart';
import 'package:tomisha_test/constants/desktop_tab_view_constants.dart';
import 'package:tomisha_test/extensions/context_extensions.dart';
import 'package:tomisha_test/gen/assets.gen.dart';
import 'package:tomisha_test/screens/components/common/custom_clippers.dart';
import 'package:tomisha_test/theme/custom_theme.dart';
import 'package:tomisha_test/widgets/custom_spacer.dart';

class TabViewDesktop extends StatelessWidget {
  final ValueNotifier<int> selectedTab;

  const TabViewDesktop({super.key, required this.selectedTab});

  DesktopTabViewConstants get tabViewConstants {
    switch (selectedTab.value) {
      case 0:
        return DesktopTabViewConstants.tabOne();
      case 1:
        return DesktopTabViewConstants.tabTwo();
      case 2:
        return DesktopTabViewConstants.tabThree();
      default:
        return DesktopTabViewConstants.tabOne();
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return ValueListenableBuilder<int>(
      valueListenable: selectedTab,
      builder: (context, _, child) {
        return Column(
          children: [
            Column(
              children: [
                Text(
                  tabViewConstants.header,
                  style: context.textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
                const VerticalSpace(98),
                SizedBox(
                  width: 1200,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 40,
                        bottom: 10,
                        child: Container(
                          width: 208,
                          height: 208,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: CustomColors.shapeColor1.withOpacity(.5),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 50),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '1. ',
                                  style: context.textTheme.headline1?.copyWith(
                                    height: 0.1,
                                  ),
                                ),
                                SizedBox(
                                  width: 400,
                                  child: Text(
                                    tabViewConstants.stepOneText,
                                    style: context.textTheme.bodyText1,
                                    maxLines: 3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const HorizontalSpace(62),
                          tabViewConstants.stepOneIllustration
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  child: Assets.illustrations.leftToRight.svg(
                    width: 583,
                    height: 387,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        tabViewConstants.stepTwoIllustration,
                        const HorizontalSpace(122),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 50),
                          child: Row(
                            children: [
                              Text(
                                '2. ',
                                style: context.textTheme.headline1?.copyWith(
                                  height: 0.3,
                                ),
                              ),
                              SizedBox(
                                width: 400,
                                child: Text(
                                  tabViewConstants.stepTwoText,
                                  style: context.textTheme.bodyText1,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  child: Assets.illustrations.rightToLeft.svg(
                    width: 530,
                    height: 234,
                  ),
                ),
                SizedBox(
                  width: 1200,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 70,
                        left: 50,
                        child: Container(
                          width: 304,
                          height: 304,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: CustomColors.shapeColor1,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 120),
                            child: Row(
                              children: [
                                Text(
                                  '3. ',
                                  style: context.textTheme.headline1?.copyWith(
                                    height: 0.8,
                                  ),
                                ),
                                SizedBox(
                                  width: 400,
                                  child: Text(
                                    tabViewConstants.stepThreeText,
                                    style: context.textTheme.bodyText1,
                                    maxLines: 3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const HorizontalSpace(27),
                          tabViewConstants.stepThreeIllustration,
                        ],
                      ),
                    ],
                  ),
                ),
                const VerticalSpace(237),
              ],
            ),
          ],
        );
      },
    );
  }
}

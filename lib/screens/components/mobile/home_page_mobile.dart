import 'package:flutter/material.dart';
import 'package:tomisha_test/screens/components/common/tab_selection_section.dart';
import 'package:tomisha_test/screens/components/mobile/header_section_mobile.dart';
import 'package:tomisha_test/screens/components/mobile/tab_view_mobile.dart';
import 'package:tomisha_test/widgets/custom_spacer.dart';

class HomePageMobile extends StatelessWidget {
  final ValueNotifier<int> selectedTab;

  const HomePageMobile({super.key, required this.selectedTab});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const HeaderSectionMobile(),
              const VerticalSpace(24),
              const VerticalSpace(27),
              TabSelectionSection(selectedTab: selectedTab),
              const VerticalSpace(30),
              TabViewMobile(selectedTab: selectedTab),
            ],
          ),
        ),
      ),
    );
  }
}

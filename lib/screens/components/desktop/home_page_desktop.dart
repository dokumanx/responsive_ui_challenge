import 'package:flutter/material.dart';
import 'package:tomisha_test/screens/components/common/tab_selection_section.dart';
import 'package:tomisha_test/screens/components/desktop/header_section_desktop.dart';
import 'package:tomisha_test/screens/components/desktop/tab_view_desktop.dart';
import 'package:tomisha_test/widgets/custom_spacer.dart';

class HomePageDesktop extends StatelessWidget {
  final ValueNotifier<int> selectedTab;

  const HomePageDesktop({super.key, required this.selectedTab});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const HeaderSectionDesktop(),
          const VerticalSpace(40),
          TabSelectionSection(selectedTab: selectedTab),
          const VerticalSpace(55),
          TabViewDesktop(selectedTab: selectedTab)
        ],
      ),
    );
  }
}

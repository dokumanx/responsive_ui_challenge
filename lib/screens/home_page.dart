import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:tomisha_test/screens/components/common/register_button.dart';
import 'package:tomisha_test/screens/components/desktop/home_page_desktop.dart';
import 'package:tomisha_test/screens/components/mobile/home_page_mobile.dart';
import 'package:tomisha_test/theme/custom_theme.dart';
import 'package:tomisha_test/widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ValueNotifier<int> selectedTab = ValueNotifier<int>(0);

  @override
  void dispose() {
    selectedTab.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(context),
      bottomNavigationBar: ResponsiveValue<Widget?>(context,
          defaultValue: Container(
            height: 128,
            width: width,
            decoration: BoxDecoration(
              color: CustomColors.primary,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, -1), // changes position of shadow
                ),
              ],
            ),
            child: const Align(child: RegisterButton()),
          ),
          valueWhen: [
            const Condition.largerThan(
              name: DESKTOP,
              value: SizedBox.shrink(),
            )
          ]).value!,
      body: ResponsiveValue<Widget>(context,
          defaultValue: HomePageMobile(selectedTab: selectedTab),
          valueWhen: [
            Condition.largerThan(
              name: DESKTOP,
              value: HomePageDesktop(selectedTab: selectedTab),
            )
          ]).value!,
    );
  }
}

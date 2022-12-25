import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:tomisha_test/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.resize(700, name: DESKTOP),
          const ResponsiveBreakpoint.resize(1100, name: 'XL'),
        ],
        minWidth: 360,
        minWidthLandscape: 360,
      ),
      home: const HomePage(),
    );
  }
}

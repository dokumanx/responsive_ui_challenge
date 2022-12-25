import 'package:flutter/material.dart';
import 'package:tomisha_test/theme/custom_theme.dart';

extension ContextExtension on BuildContext {
  TextTheme get textTheme => CustomTheme.textTheme(this);
}

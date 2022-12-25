import 'package:flutter/material.dart';
import 'package:tomisha_test/constants/string_constants.dart';
import 'package:tomisha_test/extensions/context_extensions.dart';
import 'package:tomisha_test/theme/custom_theme.dart';

class TabSelectionSection extends StatelessWidget {
  final ValueNotifier<int> selectedTab;
  const TabSelectionSection({Key? key, required this.selectedTab})
      : super(key: key);

  void _updateIndex(int index) {
    selectedTab.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: selectedTab,
      builder: (context, value, child) => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TabItem(
              index: 0,
              selectedIndex: value,
              onTap: _updateIndex,
              borderType: BorderType.left,
              text: StringConstants.selectableOneButtonText,
            ),
            TabItem(
              index: 1,
              selectedIndex: value,
              onTap: _updateIndex,
              borderType: BorderType.none,
              text: StringConstants.selectableTwoButtonText,
            ),
            TabItem(
              index: 2,
              selectedIndex: value,
              onTap: _updateIndex,
              borderType: BorderType.right,
              text: StringConstants.selectableThreeButtonText,
            ),
          ],
        ),
      ),
    );
  }
}

enum BorderType { left, right, none }

class TabItem extends StatelessWidget {
  final int selectedIndex;
  final int index;
  final String text;
  final void Function(int index) onTap;
  final BorderType borderType;

  const TabItem({
    super.key,
    required this.selectedIndex,
    required this.index,
    required this.onTap,
    required this.borderType,
    required this.text,
  });

  bool get isSelected => selectedIndex == index;

  BorderRadius get borderRadius {
    switch (borderType) {
      case BorderType.left:
        return const BorderRadius.horizontal(
          left: Radius.circular(12),
        );
      case BorderType.right:
        return const BorderRadius.horizontal(
          right: Radius.circular(12),
        );
      case BorderType.none:
        return BorderRadius.zero;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered) && !isSelected) {
              return CustomColors.buttonColor1.withOpacity(0.4);
            } else {
              return isSelected
                  ? CustomColors.buttonColor1
                  : CustomColors.primary;
            }
          },
        ),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
        backgroundColor: MaterialStateProperty.all(
          isSelected ? CustomColors.buttonColor1 : CustomColors.primary,
        ),
        fixedSize: MaterialStateProperty.all(
          const Size(160, 40),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            side: const BorderSide(
              color: CustomColors.borderColor1,
              width: 1,
            ),
            borderRadius: borderRadius,
          ),
        ),
      ),
      onPressed: () {
        onTap(index);
      },
      child: Text(
        text,
        style: context.textTheme.subtitle2!.copyWith(
          color: isSelected
              ? CustomColors.buttonColor4
              : CustomColors.buttonColor2,
        ),
      ),
    );
  }
}

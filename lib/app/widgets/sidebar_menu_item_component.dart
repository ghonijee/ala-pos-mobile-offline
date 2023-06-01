import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';

class SideMenuItemWidget extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final IconData iconData;
  final bool isActive;
  const SideMenuItemWidget({
    required this.title,
    required this.onTap,
    required this.iconData,
    this.isActive = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = BaseUI.of(context);

    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? theme.color.primaryContainer : theme.color.surface,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: EdgeInsets.only(left: 16, right: 16),
        padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: isActive ? theme.color.primary : theme.color.tertiary,
            ),
            SizedBox(
              width: 24,
            ),
            Text(
              title,
              style: theme.typo.labelLarge?.copyWith(
                color: isActive ? theme.color.primary : theme.color.tertiary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

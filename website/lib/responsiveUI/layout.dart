import 'package:flutter/material.dart';

class ResponsiveNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar mobileNav;
  final AppBar desktopNav;

  const ResponsiveNavigationBar({super.key, required this.mobileNav, required this.desktopNav});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (buildContext, constraints) {
        if (MediaQuery.of(buildContext).size.width > 500) {
          return desktopNav;
        } else {
          return mobileNav;
        }
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
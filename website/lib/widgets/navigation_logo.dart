import 'package:flutter/material.dart';

class NavigationLogo extends StatelessWidget {
  const NavigationLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        width: 100,
        child: Image.asset('assets/images/logo.png'),
    );
  }
}
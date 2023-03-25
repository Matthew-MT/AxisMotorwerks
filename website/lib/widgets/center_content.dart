import 'package:flutter/material.dart';

class CenterContent extends StatelessWidget {
  final Widget child;
  const CenterContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        alignment: Alignment.topCenter,
        child: ConstraintedBox(
          constraints: BoxConstraints(maxWidth: 1024),
          child: child,
        ),
    ),
  }
}
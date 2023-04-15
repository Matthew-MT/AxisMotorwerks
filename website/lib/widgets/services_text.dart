import 'package:flutter/material.dart';

class ServicesTextFormat extends StatelessWidget {
  final String currentText;

  const ServicesTextFormat({
    super.key, 
    required this.currentText});

  @override
  Widget build(BuildContext context) {
    return Text(
      currentText,
      textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          height: 1.66,
          color: Colors.white,
          letterSpacing: 1,
        ),
    );
  }
}

class ServicesDivider extends StatelessWidget {

  const ServicesDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.white,
      thickness: 2,
      indent: 100,
      endIndent: 100,
    );
  }
}
import 'package:flutter/material.dart';

class SinglePage extends StatelessWidget {
  final String name;
  final String route;
  final Color color;
  final Widget body;

  const SinglePage({
    this.name = "Page",
    this.route = "/",
    this.color = const Color.fromARGB(255, 98, 224, 255),
    this.body = const Center(
      child: Text("404 not found"),
    ),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      backgroundColor: color,
      body: body,
    );
  }
}

// class SinglePage2 

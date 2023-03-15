import 'package:flutter/material.dart';
import './widgets/page.dart';

final List<SinglePage> pages = [
  const SinglePage(
    name: "Home",
    route: "/",
  ),
  const SinglePage(
    name: "About",
    route: "/about",
  )
];

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
}

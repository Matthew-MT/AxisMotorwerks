import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:website/pages/page_data.dart';
import 'responsiveUI/layout.dart';
import 'responsiveUI/mobile_nav.dart';
import 'responsiveUI/desktop_nav.dart';

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Books App',
      routes: {for (var pageData in pages) pageData.path: (BuildContext buildContext) {
        return Scaffold(
          key: scaffoldKey,
          appBar: ResponsiveNavigationBar(
            mobileNav: mobileAppbar(buildContext, scaffoldKey),
            desktopNav: desktopAppbar(buildContext),
          ),
          body: pageData.body,
          drawer: mobileDrawer(buildContext),
        );
      }},
    ).animate().fadeIn(duration: 400.ms);
  }
}
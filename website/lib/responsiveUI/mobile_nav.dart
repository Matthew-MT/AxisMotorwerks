import 'package:flutter/material.dart';
import 'package:website/pages/page_data.dart';
import '../widgets/text_modifier.dart';

  AppBar mobileAppbar(BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) {
    return AppBar(
      elevation: 30,
      toolbarHeight: 100,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(255, 99, 0, 0),
              Color.fromARGB(255, 252, 47, 47),
              Color.fromARGB(255, 255, 255, 92),
            ],
          ),
        ),
      ),
      leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
      ),
      leadingWidth: 100,

    );
  }
  
  Drawer mobileDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color.fromARGB(255, 0, 0, 0),
                  Color.fromARGB(255, 99, 0, 0),
                  Color.fromARGB(255, 252, 47, 47),
                  Color.fromARGB(255, 255, 255, 92),
                ],
             ),
            ),
            child: Center(
              child: Text("AXIS\nMotorWerks",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  fontSize: 32,
                  fontFamily: "Swiss",
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  shadows: textShadow,
                  ),
              ),
            ),
          ),
          for (var pageData in pages) ListTile(
            title: Text(pageData.name),
            onTap: () {
              Navigator.pushNamed(context, pageData.path);
            },
          ),
        ],
      ),
    );
  }

import 'package:flutter/material.dart';
import 'package:website/pages/page_data.dart';

  AppBar mobileAppbar(BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) {
    return AppBar(
      elevation: 30,
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
      actions:
        [GestureDetector(
          onTap: () => Navigator.pushNamed(context, "/"),
          child: Image.asset(
            'images/logo.jpg',
          ),
        ),]
, 
    );
  }
  
  Drawer mobileDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: Image.asset('images/logo.jpg'),
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

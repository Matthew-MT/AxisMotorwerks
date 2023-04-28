import 'package:flutter/material.dart';
import 'home.dart';
import 'services.dart';
import 'about.dart';
import 'contact.dart';

class PageData {
  final String name;
  final String path;
  final Widget Function(double appBarHeight) builder;

  PageData({required this.name, required this.path, required Widget body}) : builder = ((double appBarHeight) => body);
  PageData.built({required this.name, required this.path, required this.builder});
  PageData.basic({required this.name, required Widget body}) : path = "/${name.toLowerCase()}", builder = ((double appBarHeight) => body);
  PageData.basicBuilt({required this.name, required this.builder}) : path = "/${name.toLowerCase()}";
  PageData.home({required Widget body}) : name = "Home", path = "/", builder = ((double appBarHeight) => body);
  PageData.homeBuilt({required this.builder}) : name = "Home", path = "/";
}

final List<PageData> pages = [
  PageData.homeBuilt(builder: (appBarHeight) => Homepage(appBarHeight: appBarHeight)),
  PageData.basicBuilt(name: "About", builder:(appBarHeight) => About(appBarHeight: appBarHeight)),
  PageData.basicBuilt(name: "Services", builder: (appBarHeight) => Services(appBarHeight: appBarHeight)),
  PageData.basicBuilt(name: "Contact", builder: (appBarHeight) => Contact(appBarHeight: appBarHeight)),
];
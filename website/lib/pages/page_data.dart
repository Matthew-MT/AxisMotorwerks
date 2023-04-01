import 'package:flutter/material.dart';
import 'home.dart';
import 'pricing.dart';
import 'about.dart';
import 'contact.dart';

class PageData {
  final String name;
  final String path;
  final Widget body;

  PageData({required this.name, required this.path, required this.body});
  PageData.basic({required this.name, required this.body}) : path = "/${name.toLowerCase()}";
  PageData.home({required this.body}) : name = "Home", path = "/";
}

final List<PageData> pages = [
    PageData.home(body: const Homepage()),
    PageData.basic(name: "About", body: const About()),
    PageData.basic(name: "Pricing", body: const Pricing()),
    PageData.basic(name: "Contact", body: const Contact()),
  ];
import 'package:flutter/material.dart';
import 'package:website/pages/page_data.dart';


AppBar desktopAppbar(BuildContext context) {
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
    leading: MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, "/"),
        child: Image.asset('images/logo.jpg'),
      ),
    ),
    leadingWidth: 100,
    actions: [for (var pageData in pages) TextButton(
      style: TextButton.styleFrom(foregroundColor: Colors.white70),
      onPressed:
        ModalRoute.of(context)?.settings.name != pageData.path
        ? () => Navigator.pushNamed(context, pageData.path)
        : null,
      child: Text(pageData.name),
    )],
  );
}

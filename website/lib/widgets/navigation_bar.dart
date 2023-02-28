import 'package:flutter/material.dart';
import './images.dart';

class HomeNavigationBar extends StatelessWidget {
  const HomeNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: <Widget>[
          const SizedBox(
            height: 100,
            width: 200,
            child: ImageHandler(),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              SizedBox(
                width: 60,
              ),
              _NavigationItem('FAQ'),
              SizedBox(
                width: 60,
              ),
              _NavigationItem('Pricing'),
              SizedBox(
                width: 60,
              ),
              _NavigationItem('Contact'),
            ],
          ),
        ],
      ),
    );
  }
}

class _NavigationItem extends StatelessWidget {
  final String title;
  const _NavigationItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 18),
    );
  }
}

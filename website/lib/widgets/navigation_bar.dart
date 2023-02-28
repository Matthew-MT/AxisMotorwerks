import 'package:flutter/material.dart';
import './images.dart';

class HomeNavigationBar extends StatelessWidget {
    const HomeNavigationBar({super.key});

    @override
    Widget build(BuildContext context) {
        return Container(
            height: 100,
            child: Row(
                children: <Widget>[
                    SizedBox(
                        height: 80,
                        width: 150,
                        child: ImageHandler(),
                    ),
                    Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                            _NavigationItem('FAQ'),
                            SizedBox(width: 60,),
                            _NavigationItem('Pricing'),
                            SizedBox(width: 60,),
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
        return Text(title, style: TextStyle(fontSize: 18),);
    }
}
import 'package:flutter/material.dart';

class ImageHandler extends StatelessWidget {
    const ImageHandler({super.key});
    @override
    Widget build(BuildContext context) {
        return Scaffold(
                appBar: AppBar( title: Text('Axis Motorwerks')),
                body: Center(
                    child: Image(
                        image: AssetImage(
                            'assets/images/sample_mechanic_image.jpg'),
                ),
            ),
        );
    }
}
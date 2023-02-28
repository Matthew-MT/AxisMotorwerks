import 'package:flutter/material.dart';

class ImageHandler extends StatelessWidget {
    const ImageHandler({super.key});
    @override
    Widget build(BuildContext context) {
        return Scaffold(
                //appBar: AppBar( title: Text('Axis Motorwerks')),
                body: Center(
                    child: Container(
                        child: Image.asset(
                            'assets/images/sample_mechanic_image.jpg',
                            height: 100,
                            width: 200,
                            fit: BoxFit.fitWidth,),
                ),
            ),
        );
    }
}
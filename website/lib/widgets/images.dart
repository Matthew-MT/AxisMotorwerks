import 'package:flutter/material.dart';

class ImageHandler extends StatelessWidget {
<<<<<<< HEAD
    const ImageHandler({super.key});
    @override
    Widget build(BuildContext context) {
        return Scaffold(
                body: Center(
                    child: Container(
                        child: Image.asset(
                            'assets/images/sample_mechanic_image.jpg',
                            height: 100,
                            width: 180,
                            fit: BoxFit.fitWidth,),
                ),
            ),
        );
    }
}
=======
  const ImageHandler({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar( title: Text('Axis Motorwerks')),
      body: Center(
        child: Image.asset(
          'assets/images/sample_mechanic_image.jpg',
          height: 100,
          width: 200,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
>>>>>>> fda0cf679bc836e6ebc0ad2fc301c5378e22d00d

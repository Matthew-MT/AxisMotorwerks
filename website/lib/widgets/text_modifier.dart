import 'package:flutter/material.dart';


const List<Shadow>textShadow= [
  Shadow(
    offset: Offset(-2, -2),
    color: Colors.black,
    blurRadius: 3.0
  ),
  Shadow(
    offset: Offset(2, -2),
    color: Colors.black,
    blurRadius: 3.0
  ),
  Shadow(
    offset: Offset(-2, 2),
    color: Colors.black,
    blurRadius: 3.0
  ),
  Shadow(
    offset: Offset(2, 2),
    color: Colors.black,
    blurRadius: 3.0
  ),
];

class GradientText extends StatelessWidget {
  const GradientText(
      this.text, {super.key, 
        required this.gradient,
        this.style,
      });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, 
      style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900,
      foreground: Paint()..shader = const LinearGradient(
                colors: <Color>[
                    Color.fromARGB(255, 87, 87, 87),
                    Color.fromARGB(255, 151, 151, 151),
                    Color.fromARGB(255, 193, 193, 193),
                    //add more color here.
                ],
              ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
      ),
      ),
    );
  }
}
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

const TextStyle basicContentStyle = TextStyle(
  //shadows: textShadow,
  fontWeight: FontWeight.bold,
  fontSize: 18,
  height: 1.33,
  color: Color.fromARGB(255, 0, 0, 0),
  letterSpacing: 2,
);

const TextStyle basicHeaderStyle = TextStyle(
  //shadows: textShadow,
  fontFamily: "Swiss",
  fontStyle: FontStyle.italic,
  fontWeight: FontWeight.w200,
  fontSize: 26,
  height: 1.33,
  color: Colors.white,
  letterSpacing: 2,
);

ShaderMask verticalTextgradient(Text text){
return ShaderMask(
  shaderCallback: (Rect bounds) {
    return const LinearGradient(
      colors: [Color.fromARGB(255, 0, 0, 0), Color.fromARGB(255, 228, 228, 228)],
      stops: [0.0, 0.66],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ).createShader(bounds);
  },
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: text,
  ),
);
}


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
      child: Text(
        text, 
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w900,
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

Divider headerDivider(double w, int d) {
return Divider(
  color: Colors.black,
  thickness: 2,
  indent: w/d,
  endIndent: w/d,
);
}
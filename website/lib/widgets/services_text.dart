import 'package:flutter/material.dart';
import 'text_modifier.dart';

class ServicesTextFormat extends StatelessWidget {
  final String title;
  final String description;
  final Image image;

  const ServicesTextFormat({
    super.key, 
    required this.title,
    required this.description,
    required this.image,});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
        left:width/8,
        right:width/8,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              SizedBox(
                width: 100,
                height: 100,
                child: image,
              ),
              SizedBox(width: width/32),
                Center(
                    child: Text(
                      title,
                      textAlign: TextAlign.start,
                      style: basicHeaderStyle.copyWith(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
              ],
            ),
           const SizedBox(height: 40),
            Center(
              child: Text(
                  description,
                  textAlign: TextAlign.left,
                  style: basicContentStyle,
                ),
            ),
        ],
      ),
    );
  }
}

class ServicesDivider extends StatelessWidget {

  const ServicesDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Color.fromARGB(255, 0, 0, 0),
      thickness: 2,
      indent: 250,
      endIndent: 250,
      height: 30,
    );
  }
}
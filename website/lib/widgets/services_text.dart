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
    //final width = MediaQuery.of(context).size.width;
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
              SizedBox(
                width: 150,
                height: 150,
                child: image,
              ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Center(
                  child: Text(
                    title,
                    textAlign: TextAlign.start,
                    style: basicHeaderStyle.copyWith(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
            Center(
              child: Text(
                  description,
                  textAlign: TextAlign.start,
                  style: basicContentStyle.copyWith(
                    fontSize: 18
                  ),
                ),
            ),
              ],
            ),
        ],
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
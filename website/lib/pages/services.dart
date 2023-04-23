import 'package:flutter/material.dart';
import 'package:website/widgets/services_list.dart';
import 'package:website/widgets/text_modifier.dart';
import 'package:website/widgets/banner_page.dart';

class Services extends StatelessWidget {
  const Services ({super.key});

  @override
  Widget build(BuildContext context) {
    final
      width = MediaQuery.of(context).size.width;
    return BannerPage(
        bannerSource: "images/toyota.jpg",
        bannerText: "OUR SERVICES",
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 5),
                  color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                  spreadRadius: 20,
                  blurRadius: 20
                ),
              ],
            ),
            height: (MediaQuery.of(context).size.width)/6,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  child: Image.asset("images/carbonfiber.png" ,
                    fit: BoxFit.fitWidth,
                    ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget> [ 
                    Center(
                      child: Text(
                        "WE SPECIALIZE IN THE FOLLOWING SERVICES",
                        textAlign: TextAlign.center,
                        style: basicHeaderStyle,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ),
          Container(
            decoration: BoxDecoration(
            color: const Color.fromARGB(255, 235, 235, 235),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 48, 48, 48).withOpacity(0.5),
                  spreadRadius: 6,
                  blurRadius: 6,
                ),
              ],
            ),
            height: 4000,
            width: MediaQuery.of(context).size.width,
            child: servicesList(context)
          ),
        ],
    );
  }
}

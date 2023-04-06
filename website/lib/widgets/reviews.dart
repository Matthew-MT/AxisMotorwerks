import 'package:flutter/material.dart';
import 'dart:convert';

class ReviewCarousel extends StatefulWidget {
  const ReviewCarousel({super.key});

  @override
  State<ReviewCarousel> createState() => _ReviewCarouselState();
}

class _ReviewCarouselState extends State<ReviewCarousel> with TickerProviderStateMixin {
  List<dynamic> reviews = [];
  int current = 0;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..addListener(() => setState(() {}));
    controller.repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData query = MediaQuery.of(context);
    final double width = query.size.width;
    // final double height = query.size.height - widget.appBarHeight;

    return Container(
      margin: const EdgeInsets.only(
        bottom: 32,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () => setState(() {
              current = current == 0 ? reviews.length - 1 : current - 1;
            }),
            icon: const Icon(Icons.arrow_left),
          ),
          Container(
            height: 256,
            // margin: EdgeInsets.only(
            //   left: width > 1024 ? (width - 1024) / 2 : 0,
            //   right: width > 1024 ? (width - 1024) / 2 : 0,
            //   bottom: 32,
            // ),
            constraints: BoxConstraints(maxWidth: width / 2),
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black54,
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: FutureBuilder(
              future: DefaultAssetBundle.of(context).loadString("json/reviews.json"),
              builder: (BuildContext buildContext, AsyncSnapshot<dynamic> snapshot) {
                if (!snapshot.hasData) {
                  return CircularProgressIndicator(
                    value: controller.value,
                  );
                }
                controller.stop();
                if (reviews.isEmpty) reviews = json.decode(snapshot.data);
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          reviews[current]["name"],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Text("${reviews[current]["rating"]} stars"),
                      ],
                    ),
                    const Divider(),
                    Container(
                      constraints: const BoxConstraints(maxHeight: 148),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(reviews[current]["comment"]),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          IconButton(
            onPressed: () => setState(() {
              current = (current + 1) % reviews.length;
            }),
            icon: const Icon(Icons.arrow_right),
          ),
        ]
      ),
    );
  }
}

import 'dart:math';
import 'package:flutter/material.dart';
import '../utils/utils.dart';

class BannerPage extends StatelessWidget {
  final double appBarHeight;
  final String bannerSource;
  final String bannerText;
  final List<Widget> children;
  const BannerPage({
    required this.appBarHeight,
    required this.bannerSource,
    required this.bannerText,
    required this.children,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final MediaQueryData query = MediaQuery.of(context);
    final double width = query.size.width;
    final double height = query.size.height - appBarHeight;
    final Image bannerImage = Image.asset(
      bannerSource,
      width: width,
      fit: BoxFit.cover,
    );
    final controller = ScrollController();

    return FutureBuilder(
      future: getImageSize(bannerImage),
      builder: (BuildContext buildContext, AsyncSnapshot<Size> snapshot) {
        return BannerPageContent(
          bannerImage: bannerImage,
          bannerText: bannerText,
          appBarHeight: appBarHeight,
          width: width,
          height: height,
          imageSize: snapshot.data,
          controller: controller,
          children: children,
        );
      },
    );
  }
}

class BannerPageContent extends StatefulWidget {
  final Image bannerImage;
  final String bannerText;
  final double appBarHeight;
  final double width;
  final double height;
  final double offset;
  final Size? imageSize;
  final ScrollController controller;
  final List<Widget> children;
  BannerPageContent({
    required this.bannerImage,
    required this.bannerText,
    required this.appBarHeight,
    required this.width,
    required this.height,
    required this.imageSize,
    required this.controller,
    required this.children,
    super.key,
  }) : offset = min(
    ((imageSize?.height ?? 0) * width) / (imageSize?.width ?? 1),
    height / 3,
  );

  @override
  State<BannerPageContent> createState() => _BannerPageContentState();
}

class _BannerPageContentState extends State<BannerPageContent> {
  double bannerTop = 0;

  void listenToScroll() => setState(() {
    bannerTop
      = (widget.imageSize?.height ?? 0)
      * (widget.width / (widget.imageSize?.width ?? 1))
      > widget.height
      ? widget.controller.offset >= widget.offset
        ? widget.height
          - (
            widget.imageSize!.height
            * (widget.width / (widget.imageSize?.width ?? 1))
          )
        : (
          widget.height
          - (
            widget.imageSize!.height
            * (widget.width / (widget.imageSize?.width ?? 1))
          )
        ) * (widget.controller.offset / widget.offset)
      : 0;
  });

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(listenToScroll);
  }

  @override
  void dispose() {
    widget.controller.removeListener(listenToScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: invalid_use_of_protected_member
    if (!widget.controller.hasListeners) widget.controller.addListener(listenToScroll);
    final top = widget.width / 3.5;
    return Stack(
      children: [
        Stack(
          children: <Widget>[
            Positioned(
              top: bannerTop,
              child: widget.bannerImage,
            ),
            Container(
              width: widget.width,
              height: 30,
              color: Colors.black.withOpacity(0.5),
              child: Row(children: const [
                Expanded(
                  child: Text("1105 N 1st St, Grand Junction, CO",
                textAlign: TextAlign.center,
                  style: 
                  TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold),)),
                Expanded(
                  child: Text(
                    "970-433-7111",
                    textAlign: TextAlign.center,
                    style: 
                    TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Expanded(
                  child: Text("Monday - Friday, 8:00am - 5:00pm", 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
                )),
              ]),
            ),
            Align(
              alignment: AlignmentDirectional(
                0, top + widget.appBarHeight < widget.height
                ? ((top + widget.appBarHeight) / widget.height) - 1
                : 0
              ),
              child: Text(
                widget.bannerText,
                style: const TextStyle(
                  fontFamily: 'Swiss',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 80,
                  height: 1.33,
                  color: Colors.white,
                  letterSpacing: 2,
                  shadows: [
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
                  ],
                ),
              ),
            ),
          ],
        ),
        SingleChildScrollView(
          controller: widget.controller,
          child: Container(
            alignment: Alignment.topLeft,
            constraints: BoxConstraints(minHeight: widget.height - widget.offset),
            margin: EdgeInsets.only(
              top: top,
              //left: widget.width > 1024 ? (widget.width - 1024) / 4 : 0,
              //right: widget.width > 1024 ? (widget.width - 1024) / 4 : 0,
            ),
            // padding: EdgeInsets.all(widget.width / 16),
            decoration: BoxDecoration(
              color: Colors.lightBlue[50],
              boxShadow: const [
                BoxShadow(
                  color: Colors.black54,
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.children
            ),
          ),
        ),
      ],
    );
  }
}

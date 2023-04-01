import 'dart:math';
import 'package:flutter/material.dart';
import '../utils/utils.dart';

class BannerPage extends StatelessWidget {
  final double appBarHeight;
  final String bannerSource;
  final List<Widget> children;
  const BannerPage({
    this.appBarHeight = 0,
    required this.bannerSource,
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
  final double appBarHeight;
  final double width;
  final double height;
  final double offset;
  final Size? imageSize;
  final ScrollController controller;
  final List<Widget> children;
  BannerPageContent({
    required this.bannerImage,
    required this.appBarHeight,
    required this.width,
    required this.height,
    required this.imageSize,
    required this.controller,
    required this.children,
    super.key,
  }) : offset = min(
    (imageSize?.height ?? 0) * (width / (imageSize?.width ?? 1)),
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
    if (!widget.controller.hasListeners) widget.controller.addListener(listenToScroll);
    return Stack(
      children: [
        Positioned(
          top: bannerTop,
          child: widget.bannerImage,
        ),
        SingleChildScrollView(
          controller: widget.controller,
          child: Container(
            alignment: Alignment.topLeft,
            constraints:
                BoxConstraints(minHeight: widget.height - widget.offset),
            margin: EdgeInsets.only(
              top: widget.offset,
              left: widget.width > 1024 ? (widget.width - 1024) / 4 : 0,
              right: widget.width > 1024 ? (widget.width - 1024) / 4 : 0,
            ),
            padding: EdgeInsets.all(widget.width / 16),
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

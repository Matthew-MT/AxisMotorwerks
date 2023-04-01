import 'dart:math';
import 'package:flutter/material.dart';
import '../utils/utils.dart';

class Homepage extends StatelessWidget {
  final double appBarHeight;
  const Homepage({required this.appBarHeight, super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryData query = MediaQuery.of(context);
    final double width = query.size.width;
    final double height = query.size.height - appBarHeight;
    final Image bannerImage = Image.asset(
      "images/sample_mechanic_image.jpg",
      width: width,
      fit: BoxFit.cover,
    );
    final controller = ScrollController();

    return FutureBuilder(
      future: getImageSize(bannerImage),
      builder: (BuildContext buildContext, AsyncSnapshot<Size> snapshot) {
        return HomepageContent(
          bannerImage: bannerImage,
          appBarHeight: appBarHeight,
          width: width,
          height: height,
          imageSize: snapshot.data,
          controller: controller
        );
      },
    );
  }
}

class HomepageContent extends StatefulWidget {
  final Image bannerImage;
  final double appBarHeight;
  final double width;
  final double height;
  final double offset;
  final Size? imageSize;
  final ScrollController controller;
  HomepageContent({
    required this.bannerImage,
    required this.appBarHeight,
    required this.width,
    required this.height,
    required this.imageSize,
    required this.controller,
    super.key,
  }) : offset = min((imageSize?.height ?? 0) * (width / (imageSize?.width ?? 1)), height / 3);

  @override
  State<HomepageContent> createState() => _HomepageContentState();
}

class _HomepageContentState extends State<HomepageContent> {
  double bannerTop = 0;

  void listenToScroll() => setState(() {
    bannerTop =
      (widget.imageSize?.height ?? 0) * (widget.width / (widget.imageSize?.width ?? 1)) > widget.height
      ?
        widget.controller.offset >= widget.offset
        ? widget.height - (widget.imageSize!.height * (widget.width / (widget.imageSize?.width ?? 1)))
        : (widget.height - (widget.imageSize!.height * (widget.width / (widget.imageSize?.width ?? 1)))) * (widget.controller.offset / widget.offset)
      : 0;
    print("bannerTop: $bannerTop");
  });

  @override
  _HomepageContentState() {
    // widget.controller.addListener(listenToScroll);
  }

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
            constraints: BoxConstraints(minHeight: widget.height - widget.offset),
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
              children: const [
                Text(
                  "Welcome to Axis Motorwerks!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Divider(),
                Text(
"""
Ipsam minus facere dolorem. Exercitationem consequatur illum officia culpa delectus quisquam in veniam. Reprehenderit doloribus qui iure et et fugiat consequatur nam.

Reiciendis aut corrupti rem. Voluptas fugit error a veniam nobis impedit. Ut aut molestias reiciendis saepe non quos aut soluta. Vel qui delectus eveniet velit ea veniam dolores. Sit esse corrupti aut eligendi ab. Ut minima voluptatem harum qui optio.

Quod dolore sed totam quis. Exercitationem dolorem sit alias repellat quisquam tempora. Iste quisquam est quisquam.

Dignissimos quaerat perspiciatis iusto incidunt excepturi assumenda qui velit. Velit atque optio earum. Ut nesciunt adipisci tempora voluptatem omnis sint eos quisquam. Consequatur alias corrupti qui dolorem quia dolor illum ratione. Eius et culpa quasi.

Consequatur quis qui voluptatem nulla aut. Quae labore quia nihil quisquam incidunt beatae. Exercitationem odio in similique consequatur molestiae amet dolorem iusto. Consectetur nam aut voluptatem. Ab voluptatem voluptas ducimus eius qui et.

Ipsam minus facere dolorem. Exercitationem consequatur illum officia culpa delectus quisquam in veniam. Reprehenderit doloribus qui iure et et fugiat consequatur nam.

Reiciendis aut corrupti rem. Voluptas fugit error a veniam nobis impedit. Ut aut molestias reiciendis saepe non quos aut soluta. Vel qui delectus eveniet velit ea veniam dolores. Sit esse corrupti aut eligendi ab. Ut minima voluptatem harum qui optio.

Quod dolore sed totam quis. Exercitationem dolorem sit alias repellat quisquam tempora. Iste quisquam est quisquam.

Dignissimos quaerat perspiciatis iusto incidunt excepturi assumenda qui velit. Velit atque optio earum. Ut nesciunt adipisci tempora voluptatem omnis sint eos quisquam. Consequatur alias corrupti qui dolorem quia dolor illum ratione. Eius et culpa quasi.

Consequatur quis qui voluptatem nulla aut. Quae labore quia nihil quisquam incidunt beatae. Exercitationem odio in similique consequatur molestiae amet dolorem iusto. Consectetur nam aut voluptatem. Ab voluptatem voluptas ducimus eius qui et.

Ipsam minus facere dolorem. Exercitationem consequatur illum officia culpa delectus quisquam in veniam. Reprehenderit doloribus qui iure et et fugiat consequatur nam.

Reiciendis aut corrupti rem. Voluptas fugit error a veniam nobis impedit. Ut aut molestias reiciendis saepe non quos aut soluta. Vel qui delectus eveniet velit ea veniam dolores. Sit esse corrupti aut eligendi ab. Ut minima voluptatem harum qui optio.

Quod dolore sed totam quis. Exercitationem dolorem sit alias repellat quisquam tempora. Iste quisquam est quisquam.

Dignissimos quaerat perspiciatis iusto incidunt excepturi assumenda qui velit. Velit atque optio earum. Ut nesciunt adipisci tempora voluptatem omnis sint eos quisquam. Consequatur alias corrupti qui dolorem quia dolor illum ratione. Eius et culpa quasi.

Consequatur quis qui voluptatem nulla aut. Quae labore quia nihil quisquam incidunt beatae. Exercitationem odio in similique consequatur molestiae amet dolorem iusto. Consectetur nam aut voluptatem. Ab voluptatem voluptas ducimus eius qui et.

Ipsam minus facere dolorem. Exercitationem consequatur illum officia culpa delectus quisquam in veniam. Reprehenderit doloribus qui iure et et fugiat consequatur nam.

Reiciendis aut corrupti rem. Voluptas fugit error a veniam nobis impedit. Ut aut molestias reiciendis saepe non quos aut soluta. Vel qui delectus eveniet velit ea veniam dolores. Sit esse corrupti aut eligendi ab. Ut minima voluptatem harum qui optio.

Quod dolore sed totam quis. Exercitationem dolorem sit alias repellat quisquam tempora. Iste quisquam est quisquam.

Dignissimos quaerat perspiciatis iusto incidunt excepturi assumenda qui velit. Velit atque optio earum. Ut nesciunt adipisci tempora voluptatem omnis sint eos quisquam. Consequatur alias corrupti qui dolorem quia dolor illum ratione. Eius et culpa quasi.

Consequatur quis qui voluptatem nulla aut. Quae labore quia nihil quisquam incidunt beatae. Exercitationem odio in similique consequatur molestiae amet dolorem iusto. Consectetur nam aut voluptatem. Ab voluptatem voluptas ducimus eius qui et.

Ipsam minus facere dolorem. Exercitationem consequatur illum officia culpa delectus quisquam in veniam. Reprehenderit doloribus qui iure et et fugiat consequatur nam.

Reiciendis aut corrupti rem. Voluptas fugit error a veniam nobis impedit. Ut aut molestias reiciendis saepe non quos aut soluta. Vel qui delectus eveniet velit ea veniam dolores. Sit esse corrupti aut eligendi ab. Ut minima voluptatem harum qui optio.

Quod dolore sed totam quis. Exercitationem dolorem sit alias repellat quisquam tempora. Iste quisquam est quisquam.

Dignissimos quaerat perspiciatis iusto incidunt excepturi assumenda qui velit. Velit atque optio earum. Ut nesciunt adipisci tempora voluptatem omnis sint eos quisquam. Consequatur alias corrupti qui dolorem quia dolor illum ratione. Eius et culpa quasi.

Consequatur quis qui voluptatem nulla aut. Quae labore quia nihil quisquam incidunt beatae. Exercitationem odio in similique consequatur molestiae amet dolorem iusto. Consectetur nam aut voluptatem. Ab voluptatem voluptas ducimus eius qui et.

Ipsam minus facere dolorem. Exercitationem consequatur illum officia culpa delectus quisquam in veniam. Reprehenderit doloribus qui iure et et fugiat consequatur nam.

Reiciendis aut corrupti rem. Voluptas fugit error a veniam nobis impedit. Ut aut molestias reiciendis saepe non quos aut soluta. Vel qui delectus eveniet velit ea veniam dolores. Sit esse corrupti aut eligendi ab. Ut minima voluptatem harum qui optio.

Quod dolore sed totam quis. Exercitationem dolorem sit alias repellat quisquam tempora. Iste quisquam est quisquam.

Dignissimos quaerat perspiciatis iusto incidunt excepturi assumenda qui velit. Velit atque optio earum. Ut nesciunt adipisci tempora voluptatem omnis sint eos quisquam. Consequatur alias corrupti qui dolorem quia dolor illum ratione. Eius et culpa quasi.

Consequatur quis qui voluptatem nulla aut. Quae labore quia nihil quisquam incidunt beatae. Exercitationem odio in similique consequatur molestiae amet dolorem iusto. Consectetur nam aut voluptatem. Ab voluptatem voluptas ducimus eius qui et.

Ipsam minus facere dolorem. Exercitationem consequatur illum officia culpa delectus quisquam in veniam. Reprehenderit doloribus qui iure et et fugiat consequatur nam.

Reiciendis aut corrupti rem. Voluptas fugit error a veniam nobis impedit. Ut aut molestias reiciendis saepe non quos aut soluta. Vel qui delectus eveniet velit ea veniam dolores. Sit esse corrupti aut eligendi ab. Ut minima voluptatem harum qui optio.

Quod dolore sed totam quis. Exercitationem dolorem sit alias repellat quisquam tempora. Iste quisquam est quisquam.

Dignissimos quaerat perspiciatis iusto incidunt excepturi assumenda qui velit. Velit atque optio earum. Ut nesciunt adipisci tempora voluptatem omnis sint eos quisquam. Consequatur alias corrupti qui dolorem quia dolor illum ratione. Eius et culpa quasi.

Consequatur quis qui voluptatem nulla aut. Quae labore quia nihil quisquam incidunt beatae. Exercitationem odio in similique consequatur molestiae amet dolorem iusto. Consectetur nam aut voluptatem. Ab voluptatem voluptas ducimus eius qui et.

Ipsam minus facere dolorem. Exercitationem consequatur illum officia culpa delectus quisquam in veniam. Reprehenderit doloribus qui iure et et fugiat consequatur nam.

Reiciendis aut corrupti rem. Voluptas fugit error a veniam nobis impedit. Ut aut molestias reiciendis saepe non quos aut soluta. Vel qui delectus eveniet velit ea veniam dolores. Sit esse corrupti aut eligendi ab. Ut minima voluptatem harum qui optio.

Quod dolore sed totam quis. Exercitationem dolorem sit alias repellat quisquam tempora. Iste quisquam est quisquam.

Dignissimos quaerat perspiciatis iusto incidunt excepturi assumenda qui velit. Velit atque optio earum. Ut nesciunt adipisci tempora voluptatem omnis sint eos quisquam. Consequatur alias corrupti qui dolorem quia dolor illum ratione. Eius et culpa quasi.

Consequatur quis qui voluptatem nulla aut. Quae labore quia nihil quisquam incidunt beatae. Exercitationem odio in similique consequatur molestiae amet dolorem iusto. Consectetur nam aut voluptatem. Ab voluptatem voluptas ducimus eius qui et.
"""
                ),
              ]
            ),
          ),
        ),
      ],
    );
  }
}

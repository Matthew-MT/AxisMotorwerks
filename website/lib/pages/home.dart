import 'dart:math';
import 'package:flutter/material.dart';
import '../widgets/banner_page.dart';
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

    return const BannerPage(
      bannerSource: "images/sample_mechanic_image.jpg",
      children: [
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
    );
  }
}

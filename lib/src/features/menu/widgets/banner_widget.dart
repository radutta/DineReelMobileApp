import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

final List<String> images = [
  "https://www.dineout.co.in/blog/wp-content/uploads/2018/10/WhatsApp-Image-2018-10-18-at-8.06.23-PM.jpeg",
  'https://cdn.grabon.in/gograbon/images/category/1546252575451.png',
  "https://d4t7t8y8xqo0t.cloudfront.net/resized/1080X400/pages%2F1074%2Fimage20211008090455.jpg"
];

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Text(
            'offer'.tr(),
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: 172,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 172,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(images[index])),
                );
              }),
        )
      ],
    );
  }
}

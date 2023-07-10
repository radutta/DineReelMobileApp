import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../themes/colors.dart';

final List<String> images = [
  "https://www.dineout.co.in/blog/wp-content/uploads/2018/10/WhatsApp-Image-2018-10-18-at-8.06.23-PM.jpeg",
  'https://cdn.grabon.in/gograbon/images/category/1546252575451.png',
  "https://d4t7t8y8xqo0t.cloudfront.net/resized/1080X400/pages%2F1074%2Fimage20211008090455.jpg"
];

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  late CarouselController controller;
  int activeIndex = 0;

  void animateToSlide(int index) => controller.animateToPage(index);
  @override
  void initState() {
    controller = CarouselController();
    super.initState();
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: images.length,
        onDotClicked: animateToSlide,
        effect: const ScrollingDotsEffect(
          dotWidth: 10,
          dotHeight: 10,
          activeDotColor: AppColors.primaryGradientDeep,
          dotColor: Colors.grey,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'offer'.tr(),
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "${activeIndex + 1}/${images.length}",
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
        const SizedBox(height: 15),
        CarouselSlider(
          items: images
              .map(
                (e) => GestureDetector(
                  onTap: () {},
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        e,
                        fit: BoxFit.cover,
                      )),
                ),
              )
              .toList(),
          options: CarouselOptions(
            height: 172,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.9,
            onPageChanged: (index, reason) =>
                setState(() => activeIndex = index),
          ),
        ),
        const SizedBox(height: 10),
        Center(child: buildIndicator()),
      ],
    );
  }
}

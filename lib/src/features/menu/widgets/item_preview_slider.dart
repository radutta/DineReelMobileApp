import 'package:dinereel/src/features/menu/widgets/menu_card.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../themes/colors.dart';

class ItemPreviewSlider extends StatefulWidget {
  const ItemPreviewSlider({super.key});

  @override
  State<ItemPreviewSlider> createState() => _ItemPreviewSliderState();
}

class _ItemPreviewSliderState extends State<ItemPreviewSlider> {
  late PageController pagecontroller;
  bool iconColor = false;

  @override
  void initState() {
    pagecontroller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pagecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 400,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: PageView.builder(
              controller: pagecontroller,
              itemCount: imagesItem.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    child: Image.network(
                      imagesItem[index],
                      fit: BoxFit.cover,
                    ));
              }),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 2 - 37.5,
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: SmoothPageIndicator(
                controller: pagecontroller,
                count: imagesItem.length,
                onDotClicked: (index) => pagecontroller.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    ),
                effect: const ScrollingDotsEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    spacing: 5,
                    dotColor: Colors.grey,
                    activeDotScale: 1,
                    activeStrokeWidth: 1.7,
                    activeDotColor: AppColors.prinaryGradientDeep)),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: GestureDetector(
            onTap: () {
              setState(() {
                iconColor = !iconColor;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 18, top: 50),
              child: iconColor
                  ? const Icon(
                      Icons.favorite,
                      color: AppColors.activeRed,
                    )
                  : const Icon(
                      Icons.favorite_border_outlined,
                      color: AppColors.white,
                    ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 18, top: 50),
              child: Icon(
                Icons.arrow_back,
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

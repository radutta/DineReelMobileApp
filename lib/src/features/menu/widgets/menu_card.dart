import 'package:dinereel/src/features/menu/screens/item_detials_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../routing/routing_function.dart';
import '../../../themes/colors.dart';

final List<String> imagesItem = [
  'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://images.pexels.com/photos/1099680/pexels-photo-1099680.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://images.pexels.com/photos/958545/pexels-photo-958545.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://images.pexels.com/photos/699953/pexels-photo-699953.jpeg?auto=compress&cs=tinysrgb&w=600'
];

class MenuCardWidget extends StatefulWidget {
  const MenuCardWidget({super.key});

  @override
  State<MenuCardWidget> createState() => _MenuCardWidgetState();
}

class _MenuCardWidgetState extends State<MenuCardWidget> {
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
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(Routes().createRoute(const ItemDetailsPage()));
      },
      child: Container(
        height: 400,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            PageView.builder(
                controller: pagecontroller,
                itemCount: imagesItem.length,
                itemBuilder: (context, index) {
                  return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child:
                          // index == 0
                          //     ? const VideoPlayerWidget(
                          //         videoUrl:
                          //             'https://player.vimeo.com/external/376204686.hd.mp4?s=4014d6c498512ff5908a1a17dd05fd346954944f&profile_id=174&oauth2_token_id=57447761',
                          //       )
                          //     :
                          Image.network(
                        imagesItem[index],
                        fit: BoxFit.cover,
                      ));
                }),
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    iconColor = !iconColor;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 18, top: 22),
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
              child: Container(
                margin: const EdgeInsets.only(top: 22),
                padding: const EdgeInsets.only(left: 10),
                width: 85,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  AppColors.prinaryGradientDeep,
                  AppColors.prinaryGradientLight,
                  Colors.transparent.withOpacity(.2)
                ])),
                child: Text(
                  "new".tr(),
                  style: const TextStyle(color: AppColors.black),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 22),
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
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      color: AppColors.black.withOpacity(.4)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: AppColors.activeRed)),
                            child: const Center(
                              child: Icon(
                                Icons.fiber_manual_record,
                                color: AppColors.activeRed,
                                size: 18,
                              ),
                            ),
                          ),
                          Text(
                            'Chicken Biriyani',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(color: AppColors.white),
                          ),
                          Text(
                            '₹ 290',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: AppColors.white),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 48, vertical: 6.5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(colors: [
                              AppColors.prinaryGradientDeep,
                              AppColors.prinaryGradientLight
                            ]),
                            color: AppColors.prinaryGradientLight),
                        child: Text(
                          'add'.tr(),
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

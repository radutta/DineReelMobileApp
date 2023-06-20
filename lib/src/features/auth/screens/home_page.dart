import 'package:carousel_slider/carousel_slider.dart';
import 'package:dinereel/src/features/menu/screens/menu_page.dart';
import 'package:dinereel/src/features/menu/screens/qr_scan_page.dart';
import 'package:dinereel/src/themes/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../common_widgets/bottom_navigation_bar.dart';
import '../../../cubit/cubit/navigationcontroller_cubit.dart';
import '../../../routing/routing_function.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> screens = [const HomePage(), const BlogPage()];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[context.watch<NavigationcontrollerCubit>().state],
      floatingActionButton: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(Routes().createRoute(const QrScanPage()));
          },
          child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: AppColors.black,
                  borderRadius: BorderRadius.circular(100)),
              child: Image.asset('assets/auth/images/scan.png'))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomAppBar(
          padding: EdgeInsets.symmetric(vertical: 10),
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: HomeBottomNavigationBar()),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> images = [
    'assets/auth/images/item1.png',
    'assets/auth/images/item2.png',
    'assets/auth/images/item3.png',
    'assets/auth/images/item4.png',
  ];
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
        count: 4,
        onDotClicked: animateToSlide,
        effect: const ScrollingDotsEffect(
          dotWidth: 10,
          dotHeight: 10,
          activeDotColor: AppColors.prinaryGradientDeep,
          dotColor: Colors.grey,
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        bottom: false,
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                AppColors.prinaryGradientDeep,
                AppColors.secondaryLightColor
              ])),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('hi_dinereeler'.tr(),
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700)),
                        Text(
                          '+91 xxxxx-xxxxx'.tr(),
                          style: Theme.of(context).textTheme.displaySmall,
                        )
                      ],
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all()),
                      child: const Icon(Icons.person_2_outlined),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 130),
              CarouselSlider(
                items: images
                    .map(
                      (e) => GestureDetector(
                        onTap: () {},
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(200),
                            child: Image.asset(
                              e,
                              fit: BoxFit.cover,
                            )),
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  height: 345,
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
              buildIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}

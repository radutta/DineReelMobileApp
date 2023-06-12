import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dinereel/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      backgroundColor: AppColors.prinaryGradientDeep,
      body: SafeArea(
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
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hi Dinereeler,',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700)),
                        Text('+91 xxxxx-xxxxx')
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
              // Center(
              //   child: Container(
              //     padding: const EdgeInsets.all(5),
              //     decoration: BoxDecoration(
              //       gradient: const LinearGradient(colors: [
              //         AppColors.prinaryGradientLight,
              //         AppColors.prinaryGradientDeep,
              //         Color.fromARGB(255, 203, 122, 24),
              //         Color.fromARGB(255, 145, 88, 18),
              //       ]),
              //       borderRadius: BorderRadius.circular(300),
              //     ),
              //     child: Image.asset('assets/images/home_bg.png'),
              //   ),
              // ),
              CarouselSlider(
                items: [
                  GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            AppColors.prinaryGradientLight,
                            AppColors.prinaryGradientDeep,
                            Color.fromARGB(255, 203, 122, 24),
                            Color.fromARGB(255, 145, 88, 18),
                          ]),
                          borderRadius: BorderRadius.circular(300),
                        ),
                        child: Image.asset('assets/images/home_bg.png'),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            AppColors.prinaryGradientLight,
                            AppColors.prinaryGradientDeep,
                            Color.fromARGB(255, 203, 122, 24),
                            Color.fromARGB(255, 145, 88, 18),
                          ]),
                          borderRadius: BorderRadius.circular(300),
                        ),
                        child: Image.asset('assets/images/home_bg.png'),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            AppColors.prinaryGradientLight,
                            AppColors.prinaryGradientDeep,
                            Color.fromARGB(255, 203, 122, 24),
                            Color.fromARGB(255, 145, 88, 18),
                          ]),
                          borderRadius: BorderRadius.circular(300),
                        ),
                        child: Image.asset('assets/images/home_bg.png'),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            AppColors.prinaryGradientLight,
                            AppColors.prinaryGradientDeep,
                            Color.fromARGB(255, 203, 122, 24),
                            Color.fromARGB(255, 145, 88, 18),
                          ]),
                          borderRadius: BorderRadius.circular(300),
                        ),
                        child: Image.asset('assets/images/home_bg.png'),
                      ),
                    ),
                  )
                ],
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
              buildIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}

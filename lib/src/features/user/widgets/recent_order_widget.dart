import 'package:dinereel/src/features/order/screens/your_order_page.dart';
import 'package:dinereel/src/features/user/screens/recent_order_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../routing/routing_function.dart';
import '../../../themes/colors.dart';

class RecentOrderWidget extends StatelessWidget {
  const RecentOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent orders',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(Routes().createRouteUp(const YourOrderPage()));
                },
                child: Text(
                  'Show all',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              )
            ],
          ),
        ),
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(Routes().createRoute(const RecentOrderdetails()));
                },
                child: Stack(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 3.h),
                          Container(
                            height: 80.w,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                            margin: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24)),
                              shadows: const [
                                BoxShadow(
                                    color: AppColors.recentordercardBoxShadow,
                                    blurRadius: 15,
                                    offset: Offset(5, 5),
                                    spreadRadius: 0)
                              ],
                            ),
                            child: Center(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 65,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 79.w,
                                          height: 65,
                                          padding: const EdgeInsets.only(
                                              right: 15, top: 5),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 300,
                                                height: 44,
                                                child: Center(
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 24,
                                                        top: 0,
                                                        child: Container(
                                                          width: 40,
                                                          height: 40,
                                                          decoration:
                                                              ShapeDecoration(
                                                            image:
                                                                const DecorationImage(
                                                              image: NetworkImage(
                                                                  "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                                                              fit: BoxFit.fill,
                                                            ),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              side: const BorderSide(
                                                                  width: 0.50,
                                                                  color: Colors
                                                                      .white),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 16,
                                                        top: 0,
                                                        child: Container(
                                                          width: 40,
                                                          height: 40,
                                                          decoration:
                                                              ShapeDecoration(
                                                            image:
                                                                const DecorationImage(
                                                              image: NetworkImage(
                                                                  "https://images.unsplash.com/photo-1484723091739-30a097e8f929?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTJ8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
                                                              fit: BoxFit.fill,
                                                            ),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              side: const BorderSide(
                                                                  width: 0.50,
                                                                  color: Colors
                                                                      .white),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Container(
                                                          width: 40,
                                                          height: 40,
                                                          decoration:
                                                              ShapeDecoration(
                                                            image:
                                                                const DecorationImage(
                                                              image: NetworkImage(
                                                                  "https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTl8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
                                                              fit: BoxFit.fill,
                                                            ),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              side: const BorderSide(
                                                                  width: 0.50,
                                                                  color: Colors
                                                                      .white),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                            'Biriyani, Chicken \nChap, Lassi,+3\nMore',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 12)),
                                        SizedBox(width: 85.w),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('29 May, 23',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall!
                                                    .copyWith(fontSize: 10)),
                                            const SizedBox(height: 5),
                                            Container(
                                              height: 40,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 14),
                                              decoration: ShapeDecoration(
                                                  gradient:
                                                      const LinearGradient(
                                                    begin:
                                                        Alignment(1.00, 0.00),
                                                    end: Alignment(-1, 0),
                                                    colors: [
                                                      Color(0xFFFFA000),
                                                      Color(0xFFFFBB0C)
                                                    ],
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              alignment: Alignment.center,
                                              child: Text('₹ 1340',
                                                  textAlign: TextAlign.center,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .copyWith(fontSize: 16)),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 80.w,
                        height: 20.h,
                        alignment: Alignment.center,
                        decoration: ShapeDecoration(
                          color: AppColors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Table No. 1',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.white,
                                  fontSize: 12),
                        ),
                      ),
                    )
                  ],
                ),
              );
            })
      ],
    );
  }
}

import 'package:dinereel/src/features/order/screens/view_order_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../routing/routing_function.dart';
import '../../../themes/colors.dart';
import '../screens/your_order_page.dart';

class ViewOrderWidget extends StatefulWidget {
  const ViewOrderWidget({super.key, required this.orderNo});
  final String orderNo;

  @override
  State<ViewOrderWidget> createState() => _ViewOrderWidgetState();
}

class _ViewOrderWidgetState extends State<ViewOrderWidget> {
  double height = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          height: height,
          // width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          duration: const Duration(milliseconds: 300),
          decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          child: SingleChildScrollView(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Items added',
                      style: Theme.of(context).textTheme.titleMedium),
                  SizedBox(width: 100.w),
                  Text(
                    'Clear All',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 12, color: AppColors.black),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text('Bitiyani',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w500, color: AppColors.black)),
                  const SizedBox(width: 10),
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
                  SizedBox(width: 130.w),
                  Text('₹ 200',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.w800))
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: SizedBox(
                  height: 1,
                  width: 371,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 50,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(left: 3),
                          height: 1,
                          width: 5,
                          color: AppColors.black,
                        );
                      }),
                ),
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text('Bitiyani',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.w500)),
                  const SizedBox(width: 10),
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
                  SizedBox(width: 130.w),
                  Text('₹ 200', style: Theme.of(context).textTheme.bodyMedium)
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: SizedBox(
                  height: 1,
                  width: 371,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 50,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(left: 3),
                          height: 1,
                          width: 5,
                          color: AppColors.black,
                        );
                      }),
                ),
              )
            ]),
          ),
        ),
        Container(
          height: 90,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
            BoxShadow(
              color: Color.fromARGB(62, 0, 0, 0),
              blurRadius: 22,
              offset: Offset(0, -4),
              spreadRadius: 10,
            )
          ]),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "${widget.orderNo} Item",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(
                          height: 20,
                          child: VerticalDivider(
                              color: AppColors.black, thickness: 2)),
                      Text(
                        '₹ 820',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          if (height == 0) {
                            setState(() {
                              height = 310;
                            });
                          } else {
                            setState(() {
                              height = 0;
                            });
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  color: AppColors.primaryGradientDeep,
                                  width: 2)),
                          child: height == 0
                              ? const Icon(Icons.expand_less,
                                  color: AppColors.primaryGradientDeep)
                              : const Icon(Icons.expand_more,
                                  color: AppColors.primaryGradientDeep),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Extra charges may apply',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 12, color: AppColors.black),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(Routes().createRoute(const ViewOrderPage()));
                  // Navigator.of(context)
                  //     .push(Routes().createRouteUp(const YourOrderPage()));
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF09632D),
                  ),
                  child: Text(
                    'View Order',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: AppColors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

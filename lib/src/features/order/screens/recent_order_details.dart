import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../themes/colors.dart';

class RecentOrderdetails extends StatelessWidget {
  const RecentOrderdetails({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back)),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Dinereel Food Hub',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text('East Kolkata Township, Kolkata',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 12))
                ],
              ),
              const SizedBox(width: 20)
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: AppColors.black),
          child: Text(
            'table_no'.tr(),
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(color: AppColors.white, fontSize: 12),
          ),
        ),
        const SizedBox(height: 10),
        Text('29 May, 23', style: Theme.of(context).textTheme.bodySmall),
        Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.primaryGradientDeep)),
          child: Column(
            children: [
              SizedBox(
                height: 260.h,
                child: ListView.builder(
                    padding: const EdgeInsets.all(0),
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
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
                              const SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Bitiyani',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.w500)),
                                  const SizedBox(width: 10),
                                  Text('1 x ₹ 200',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(fontSize: 12))
                                ],
                              ),
                              const Spacer(),
                              Text('₹ 200',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          fontSize: 15,
                                          color: AppColors.black)),
                            ],
                          ),
                          index == 3
                              ? Container()
                              : Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: SizedBox(
                                    height: 1,
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: width > 450 ? 150 : 50,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            margin:
                                                const EdgeInsets.only(left: 3),
                                            height: 1,
                                            width: 5,
                                            color: AppColors.grey,
                                          );
                                        }),
                                  ),
                                ),
                        ],
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 00, left: 30, right: 30, bottom: 20),
                child: SizedBox(
                  height: 1,
                  child: ListView.builder(
                      padding: const EdgeInsets.all(0),
                      scrollDirection: Axis.horizontal,
                      itemCount: width > 450 ? 150 : 50,
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Bitiyani',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.w500)),
                    Text('₹600',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('GST',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.w500)),
                    Text('₹150',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Restaurant charges',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.w500)),
                    Text('₹150',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 30, right: 30),
                child: SizedBox(
                  height: 1,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: width > 450 ? 150 : 50,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(left: 3),
                          height: 1,
                          width: 5,
                          color: AppColors.grey,
                        );
                      }),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Grand Total',
                        style: Theme.of(context).textTheme.bodyMedium),
                    Text('₹900', style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
              ),
              const SizedBox(height: 30)
            ],
          ),
        )
      ]),
    );
  }
}

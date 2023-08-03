import 'dart:async';

import 'package:dinereel/src/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common_widgets/primary_regular_action_button.dart';
import '../models/category_model.dart';

class CategoryBottomSheet extends StatefulWidget {
  const CategoryBottomSheet({super.key});

  @override
  State<CategoryBottomSheet> createState() => _CategoryBottomSheetState();
}

class _CategoryBottomSheetState extends State<CategoryBottomSheet> {
  List<int> selected = [];

  Future<List<CategoryModel>> convertListToFutureList(
      List<CategoryModel> categoryModelList) async {
    await Future.delayed(const Duration(seconds: 1));
    List<CategoryModel> futureList =
        categoryModelList.map((item) => item).toList();
    return futureList;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColors.grey,
              ),
              child: const Icon(Icons.close, color: AppColors.black),
            ),
          ),
          const SizedBox(height: 20),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            child: Container(
              color: AppColors.white,
              height: MediaQuery.of(context).size.height * .85,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 50, height: 50),
                        Center(
                          child: Text(
                            'Category',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.w900),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected.clear();
                            });
                          },
                          child: Text(
                            'Clear All',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        )
                      ],
                    ),
                    FutureBuilder<List<CategoryModel>>(
                        future: convertListToFutureList(categories),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            List<CategoryModel> category = snapshot.data!;
                            return GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: categories.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        mainAxisSpacing: 20.0.w,
                                        crossAxisSpacing: 10.w,
                                        childAspectRatio: 97.w / 94.h),
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      if (selected.contains(index)) {
                                        setState(() {
                                          selected.remove(index);
                                        });
                                      } else {
                                        setState(() {
                                          selected.add(index);
                                        });
                                      }
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: AppColors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: selected.contains(index)
                                              ? Border.all(
                                                  color: AppColors
                                                      .primaryGradientLight)
                                              : null,
                                          boxShadow: selected.contains(index)
                                              ? null
                                              : const [
                                                  BoxShadow(
                                                      offset: Offset(5, 5),
                                                      spreadRadius: 1,
                                                      blurRadius: 5,
                                                      color: Color.fromARGB(
                                                          255, 186, 186, 186))
                                                ]),
                                      child: Stack(
                                        children: [
                                          Column(
                                            children: [
                                              Column(
                                                children: [
                                                  SvgPicture.asset(
                                                    category[index].icon,
                                                    height: 70.h,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ],
                                              ),
                                              Center(
                                                child: Text(
                                                  category[index].title,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodySmall!
                                                      .copyWith(
                                                          color:
                                                              AppColors.black,
                                                          fontSize: 12),
                                                ),
                                              )
                                            ],
                                          ),
                                          selected.contains(index)
                                              ? const Align(
                                                  alignment: Alignment.topRight,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 4),
                                                    child: Icon(
                                                      Icons.check_circle,
                                                      color: AppColors
                                                          .primaryGradientLight,
                                                    ),
                                                  ),
                                                )
                                              : Container()
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          } else if (snapshot.hasError) {
                            return Center(
                                child: Text('Error: ${snapshot.error}'));
                          } else {
                            return const Center(
                                child: CircularProgressIndicator());
                          }
                        }),
                    SizedBox(height: 25.h),
                    PrimaryRegularActionButton(
                      text: "Apply",
                      action: () {
                        Navigator.pop(context);
                      },
                      disable: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

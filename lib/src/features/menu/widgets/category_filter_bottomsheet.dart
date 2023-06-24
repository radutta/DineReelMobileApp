import 'dart:ui';

import 'package:dinereel/src/themes/colors.dart';
import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
      child: Container(
        color: AppColors.white,
        height: MediaQuery.of(context).size.height * .8,
        // padding: const EdgeInsets.symmetric(horizontal: 30),
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
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: categories.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 33.0,
                      crossAxisSpacing: 20.0,
                      childAspectRatio: 90 / 90),
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
                            borderRadius: BorderRadius.circular(10),
                            border: selected.contains(index)
                                ? Border.all(
                                    color: AppColors.prinaryGradientLight)
                                : null,
                            boxShadow: selected.contains(index)
                                ? null
                                : const [
                                    BoxShadow(
                                        offset: Offset(5, 5),
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        color:
                                            Color.fromARGB(255, 186, 186, 186))
                                  ]),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Column(
                                  children: [
                                    SvgPicture.asset(categories[index].icon),
                                  ],
                                ),
                                Center(
                                  child: Text(
                                    categories[index].title,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: AppColors.black),
                                  ),
                                )
                              ],
                            ),
                            selected.contains(index)
                                ? const Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 4),
                                      child: Icon(
                                        Icons.check_circle,
                                        color: AppColors.prinaryGradientLight,
                                      ),
                                    ),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    );
                  }),
              const SizedBox(height: 36),
              PrimaryRegularActionButton(
                text: "Apply",
                action: () {
                  Navigator.pop(context);
                },
                disable: true,
              ),
              // const SizedBox(height: 124),
            ],
          ),
        ),
      ),
    );
  }
}

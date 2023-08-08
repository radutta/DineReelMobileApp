import 'package:dinereel/src/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../data/models/category_model.dart';

class CategoryFilterWidget extends StatefulWidget {
  const CategoryFilterWidget({super.key});

  @override
  State<CategoryFilterWidget> createState() => _CategoryFilterWidgetState();
}

class _CategoryFilterWidgetState extends State<CategoryFilterWidget> {
  List<int> clickedindex = [];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 10),
          shrinkWrap: true,
          itemCount: menucategories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                if (clickedindex.contains(index)) {
                  // setState(() {
                  //   clickedindex.remove(index);
                  // });
                } else {
                  setState(() {
                    clickedindex.add(index);
                  });
                }
              },
              child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    color: clickedindex.contains(index)
                        ? AppColors.lightyellow
                        : AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: clickedindex.contains(index)
                            ? const Color(0xFFFFA000)
                            : AppColors.grey)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(menucategories[index].image),
                    const SizedBox(width: 5),
                    Text(
                      menucategories[index].name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    clickedindex.contains(index)
                        ? GestureDetector(
                            onTap: () {
                              setState(() {
                                clickedindex.remove(index);
                              });
                            },
                            child: const Icon(
                              Icons.close,
                              color: AppColors.black,
                              size: 15,
                            ),
                          )
                        : Container()
                  ],
                ),
              ),
            );
          }),
    );
  }
}

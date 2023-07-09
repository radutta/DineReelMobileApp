import 'dart:ui';

import 'package:dinereel/src/themes/colors.dart';
import 'package:flutter/material.dart';

class OutletPopupWidget extends StatefulWidget {
  const OutletPopupWidget({super.key});

  @override
  State<OutletPopupWidget> createState() => _OutletPopupWidgetState();
}

class _OutletPopupWidgetState extends State<OutletPopupWidget> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
      child: Stack(
        children: [
          AlertDialog(
            contentPadding: const EdgeInsets.all(0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: Container(
              width: 379,
              height: 219,
              decoration: ShapeDecoration(
                color: AppColors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                shadows: const [
                  BoxShadow(
                    color: AppColors.recentordercardBoxShadow,
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Center(
                    child: Text(
                      'My Outlets',
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = 0;
                            });
                          },
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: AppColors.white,
                                border: Border.all(
                                    color: AppColors.black, width: 1)),
                            child: Center(
                              child: Container(
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: selected == 0
                                        ? AppColors.primaryGradientDeep
                                        : AppColors.grey),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Park Street',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        selected == 0
                            ? Container(
                                width: 104,
                                height: 30,
                                decoration: ShapeDecoration(
                                  gradient: const LinearGradient(
                                    begin: Alignment(1.00, 0.00),
                                    end: Alignment(-1, 0),
                                    colors: [
                                      Color(0xFFFFBB0C),
                                      Color(0xFFFFA000),
                                    ],
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Change Pin',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(fontSize: 12),
                                ),
                              )
                            : Container(
                                width: 104,
                                height: 30,
                                decoration: ShapeDecoration(
                                  color: AppColors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Set Pin',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(
                                          fontSize: 12, color: AppColors.white),
                                ),
                              ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: SizedBox(
                      height: 1,
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = 1;
                            });
                          },
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: AppColors.white,
                                border: Border.all(
                                    color: AppColors.black, width: 1)),
                            child: Center(
                              child: Container(
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: selected == 1
                                        ? AppColors.primaryGradientDeep
                                        : AppColors.grey),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Chinar Park',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        selected == 1
                            ? Container(
                                width: 104,
                                height: 30,
                                decoration: ShapeDecoration(
                                  gradient: const LinearGradient(
                                    begin: Alignment(1.00, 0.00),
                                    end: Alignment(-1, 0),
                                    colors: [
                                      Color(0xFFFFBB0C),
                                      Color(0xFFFFA000),
                                    ],
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Change Pin',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(fontSize: 12),
                                ),
                              )
                            : Container(
                                width: 104,
                                height: 30,
                                decoration: ShapeDecoration(
                                  color: AppColors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Set Pin',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(
                                          fontSize: 12, color: AppColors.white),
                                ),
                              ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: SizedBox(
                      height: 1,
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = 2;
                            });
                          },
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: AppColors.white,
                                border: Border.all(
                                    color: AppColors.black, width: 1)),
                            child: Center(
                              child: Container(
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: selected == 2
                                        ? AppColors.primaryGradientDeep
                                        : AppColors.grey),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Nagerbazar',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        selected == 2
                            ? Container(
                                width: 104,
                                height: 30,
                                decoration: ShapeDecoration(
                                  gradient: const LinearGradient(
                                    begin: Alignment(1.00, 0.00),
                                    end: Alignment(-1, 0),
                                    colors: [
                                      Color(0xFFFFBB0C),
                                      Color(0xFFFFA000),
                                    ],
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Change Pin',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(fontSize: 12),
                                ),
                              )
                            : Container(
                                width: 104,
                                height: 30,
                                decoration: ShapeDecoration(
                                  color: AppColors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Set Pin',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(
                                          fontSize: 12, color: AppColors.white),
                                ),
                              ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 200,
            left: MediaQuery.of(context).size.width / 2 - 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColors.grey),
                child: const Icon(Icons.close),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../data/models/business_menu_card_model.dart';
import '../../../themes/colors.dart';

class BusinessMenuCard extends StatefulWidget {
  const BusinessMenuCard({super.key});

  @override
  State<BusinessMenuCard> createState() => _BusinessMenuCardState();
}

class _BusinessMenuCardState extends State<BusinessMenuCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: businessMenuData.length,
          itemBuilder: (context, index) {
            return Center(
              child: Container(
                width: 500,
                height: 120,
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.only(bottom: 15),
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
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              businessMenuData[index].imageUrl,
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  businessMenuData[index].title,
                                  style: const TextStyle(
                                    color: Color(0xFF303136),
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  margin: const EdgeInsets.only(left: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border:
                                          Border.all(color: AppColors.black)),
                                  alignment: Alignment.center,
                                  child: const Center(
                                    child: Icon(
                                      Icons.fiber_manual_record,
                                      color: Colors.red,
                                      size: 16,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 130),
                                Text(
                                  businessMenuData[index].price,
                                  style: const TextStyle(
                                    color: Color(0xFF303136),
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: businessMenuData[index].desc,
                                    style: const TextStyle(
                                      color: Color(0xFF303136),
                                      fontSize: 11,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: 'See more.',
                                    style: TextStyle(
                                      color: Color(0xFF303136),
                                      fontSize: 12,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Spacer(),
                        SizedBox(
                          height: 16,
                          child: Switch(
                            onChanged: (e) {
                              if (businessMenuData[index].available == false) {
                                setState(() {
                                  businessMenuData[index].available = true;
                                });
                              } else {
                                setState(() {
                                  businessMenuData[index].available = false;
                                });
                              }
                            },
                            value: businessMenuData[index].available,
                            activeColor: AppColors.primaryGradientDeep,
                            activeTrackColor: AppColors.lightyellow,
                            inactiveThumbColor: AppColors.lightyellow,
                            inactiveTrackColor: AppColors.grey,
                          ),
                        ),
                        Text(
                          businessMenuData[index].available
                              ? "Available"
                              : "Unavailable",
                          style: const TextStyle(
                            color: Color(0xFF303136),
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

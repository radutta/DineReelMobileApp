import 'package:flutter/material.dart';

import '../../../themes/colors.dart';
import '../widgets/item_details_button_widget.dart';
import '../widgets/item_preview_slider.dart';

class ItemDetailsPage extends StatefulWidget {
  const ItemDetailsPage({super.key});

  @override
  State<ItemDetailsPage> createState() => _ItemDetailsPageState();
}

class _ItemDetailsPageState extends State<ItemDetailsPage> {
  List<String> descItems = ['History', 'ingredients', 'Nutrition'];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ItemPreviewSlider(),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Text(
                    'Chicken keema burger',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 5),
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'In publishing and graphic design, Lorem ipsum is a placeholder\ntext commonly used to demonstrate the visual form\nof a document...',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const Spacer(),
                  SizedBox(
                    height: 18,
                    width: 69 * descItems.length.toDouble(),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: descItems.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selected = index;
                              });
                            },
                            child: Container(
                              height: 19,
                              width: 69,
                              decoration: BoxDecoration(
                                  color: selected == index
                                      ? AppColors.black
                                      : AppColors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              alignment: Alignment.center,
                              child: Text(
                                descItems[index],
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                      fontSize: 10,
                                      color: selected == index
                                          ? AppColors.white
                                          : AppColors.black,
                                    ),
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                          width: 10,
                          child: ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 60,
                              separatorBuilder: (context, index) {
                                return const SizedBox(height: 3);
                              },
                              itemBuilder: (context, index) {
                                return index == 0 || index == 12 || index == 30
                                    ? Row(children: [
                                        Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                color: AppColors
                                                    .prinaryGradientDeep))
                                      ])
                                    : Center(
                                        child: Container(
                                            height: 5,
                                            width: 1,
                                            color:
                                                AppColors.prinaryGradientDeep),
                                      );
                              }))),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(descItems[0]),
                            Text(
                              'Food history is an interdisciplinary field that examines the\nhistory and the cultural, economic, environmental, and\nsociological impacts of food',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(descItems[1]),
                            Text(
                              'A food ingredient is any substance that is added to a\nfood to achieve a desired effect. The term “food\ningredient” includes food additives, which\nare substances added to foods for specific technical\nand/or functional  purposes during processing,\nstorage or packaging.',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 17),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(descItems[2]),
                            Text(
                              'A food ingredient is any substance that is added to a\nfood to achieve a desired effect. The term “food\ningredient” includes food additives, which\nare substances added to foods for specific technical\nand/or functional  purposes during processing,\nstorage or packaging.',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),

                  // SizedBox(
                  //   width: 100,
                  //   child: ListView.builder(
                  //       physics: const NeverScrollableScrollPhysics(),
                  //       shrinkWrap: true,
                  //       itemCount: descItems.length,
                  //       itemBuilder: (context, index) {
                  //         return Padding(
                  //           padding: const EdgeInsets.only(),
                  //           child: Text(descItems[index]),
                  //         );
                  //       }),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: const ItemDetailsButtonWidget(),
    );
  }
}

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          )
        ],
      ),
      bottomSheet: ItemDetailsButtonWidget(),
    );
  }
}

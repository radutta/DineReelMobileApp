import 'package:flutter/material.dart';

import '../../../themes/colors.dart';
import 'item_details_button_widget.dart';
import 'menu_card.dart';

class ItemDetailsBottomSheet extends StatelessWidget {
  const ItemDetailsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 20),
        SizedBox(
          height: 365,
          width: 365,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                imagesItem[4],
                fit: BoxFit.cover,
              )),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
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
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the\nvisual form of a document...',
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 10),
        const ItemDetailsButtonWidget()
      ],
    );
  }
}

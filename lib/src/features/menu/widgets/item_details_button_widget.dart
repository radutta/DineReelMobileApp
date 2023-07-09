import 'package:dinereel/src/themes/colors.dart';
import 'package:flutter/material.dart';

class ItemDetailsButtonWidget extends StatefulWidget {
  const ItemDetailsButtonWidget({super.key});

  @override
  State<ItemDetailsButtonWidget> createState() =>
      _ItemDetailsButtonWidgetState();
}

class _ItemDetailsButtonWidgetState extends State<ItemDetailsButtonWidget> {
  int itemCount = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
        BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 10,
            spreadRadius: 0,
            color: AppColors.grey)
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 48,
            width: 132,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: AppColors.black)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      if (itemCount > 0) {
                        setState(() {
                          itemCount = itemCount - 1;
                        });
                      }
                    },
                    child: const Icon(Icons.remove)),
                Text(itemCount.toString(),
                    style: Theme.of(context).textTheme.displaySmall),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        itemCount = itemCount + 1;
                      });
                    },
                    child: const Icon(Icons.add))
              ],
            ),
          ),
          Container(
              height: 48,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(colors: [
                  AppColors.prinaryGradientDeep,
                  AppColors.prinaryGradientLight
                ]),
              ),
              alignment: Alignment.center,
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Add item ',
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(fontWeight: FontWeight.w500)),
                TextSpan(
                    text: '₹ 200 ',
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(fontWeight: FontWeight.w700))
              ])))
        ],
      ),
    );
  }
}

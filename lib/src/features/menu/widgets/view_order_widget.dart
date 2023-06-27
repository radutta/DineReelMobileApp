import 'package:flutter/material.dart';

import '../../../themes/colors.dart';

class ViewOrderWidget extends StatelessWidget {
  const ViewOrderWidget({super.key, required this.orderNo});
  final String orderNo;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(color: AppColors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    orderNo,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(
                    height: 20,
                    child: VerticalDivider(
                      color: AppColors.black,
                      thickness: 2,
                    ),
                  ),
                  Text(
                    '₹ 820',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                            color: AppColors.primaryGradientDeep, width: 2)),
                    child: const Icon(
                      Icons.expand_less,
                      color: AppColors.primaryGradientDeep,
                    ),
                  ),
                ],
              ),
              Text(
                'Extra charges may apply',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 12, color: AppColors.black),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFF09632D),
            ),
            child: Text(
              'View Order',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.white),
            ),
          )
        ],
      ),
    );
  }
}

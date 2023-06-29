import 'package:dinereel/src/themes/colors.dart';
import 'package:flutter/material.dart';

import '../../../routing/routing_function.dart';
import '../../user/widgets/recent_order_details_card.dart';
import 'edit_order_page.dart';

class ViewOrderPage extends StatelessWidget {
  const ViewOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back)),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Dinereel Food Hub',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text('East Kolkata Township, Kolkata',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 12))
                ],
              ),
              const SizedBox(width: 20),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(Routes().createRoute(const EditOrderPage()));
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        gradient: const LinearGradient(
                          begin: Alignment(1.00, 0.00),
                          end: Alignment(-1, 0),
                          colors: [
                            AppColors.primaryGradientLight,
                            AppColors.primaryGradientDeep,
                          ],
                        ),
                      ),
                      child: const Icon(Icons.edit_outlined, size: 20),
                    ),
                  ),
                  Text('Edit Order',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 10))
                ],
              )
            ],
          ),
        ),
        Text('29 May, 23', style: Theme.of(context).textTheme.bodySmall),
        const RecentOrderDetailsCard()
      ]),
    );
  }
}

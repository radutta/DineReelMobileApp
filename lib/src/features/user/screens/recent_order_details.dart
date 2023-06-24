import 'package:flutter/material.dart';

import '../widgets/recent_order_details_card.dart';

class RecentOrderdetails extends StatelessWidget {
  const RecentOrderdetails({super.key});

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
              const Icon(Icons.arrow_back),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Dinereel Food Hub',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    'East Kolkata Township, Kolkata',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 12),
                  )
                ],
              ),
              const SizedBox(width: 20)
            ],
          ),
        ),
        Text(
          '29 May, 23',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12),
        ),
        RecentOrderDetailsCard()
      ]),
    );
  }
}

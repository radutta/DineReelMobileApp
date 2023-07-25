import 'package:dinereel/src/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../user/widgets/recent_order_details_card.dart';

class ViewOrderPage extends StatelessWidget {
  const ViewOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back, color: AppColors.black)),
        title: Text(
          'Your Order',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Column(children: [
        const RecentOrderDetailsCard(),
        const Spacer(),
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          color: AppColors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                'Total',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 20,
                child: VerticalDivider(
                  color: AppColors.black,
                  thickness: 2,
                ),
              ),
              Text('₹ 900', style: Theme.of(context).textTheme.titleMedium),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.activeGreen),
                child: const Text(
                  'Request Server',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 20.h)
      ]),
    );
  }
}

import 'package:dinereel/src/themes/colors.dart';
import 'package:flutter/material.dart';

import '../../menu/widgets/semi_circle_clipper.dart';

class YourOrderPage extends StatelessWidget {
  const YourOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: const Icon(
          Icons.arrow_back,
          color: AppColors.black,
        ),
        title:
            Text('Your Order', style: Theme.of(context).textTheme.titleMedium),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            ClipPath(
              clipper: SemiCircleClipper(bottom: 146, holeRadius: 100),
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColors.primaryGradientDeep)),
                height: 650,
              ),
            )
          ],
        ),
      ),
    );
  }
}

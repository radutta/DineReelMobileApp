import 'package:dinereel/src/features/auth/widgets/semicircle_painter.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../routing/routing_function.dart';
import '../../../themes/colors.dart';
import '../../admin/screens/business_login_page.dart';

class LoginBottomWidget extends StatelessWidget {
  const LoginBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              AppColors.primaryGradientLight,
              AppColors.primaryGradientDeep
            ]),
          ),
          child: Column(
            children: [
              SizedBox(height: 80.h),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(Routes().createRoute(const BusinessLoginPage()));
                },
                child: Center(
                  child: Text(
                    'use_dinereel_business'.tr(),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  'accept'.tr(),
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: Colors.grey),
                ),
              ),
              Center(
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'terms_and_condition'.tr(),
                      style: Theme.of(context).textTheme.displaySmall),
                  TextSpan(
                      text: 'you_read_our'.tr(),
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .copyWith(color: Colors.grey)),
                  TextSpan(
                      text: 'privacy_policy'.tr(),
                      style: Theme.of(context).textTheme.displaySmall)
                ])),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
        CustomPaint(
          painter: SemicirclePainter(),
          child: Container(
            height: 0,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                AppColors.primaryGradientLight,
                AppColors.primaryGradientDeep
              ]),
            ),
          ),
        ),
      ],
    );
  }
}

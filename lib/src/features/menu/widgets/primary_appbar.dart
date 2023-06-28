import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../routing/routing_function.dart';
import '../../../themes/colors.dart';
import '../screens/search_page.dart';

class PrimaryAppBar extends StatelessWidget {
  const PrimaryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40)),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.primaryappbarColor,
                AppColors.primaryGradientDeep,
              ])),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColors.white),
            child: Image.asset('assets/auth/images/dinereel_logo_yellow.png'),
          ),
          const SizedBox(width: 11),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'dinereel_foodhub'.tr(),
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                'address'.tr(),
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.black),
                child: Text(
                  'table_no'.tr(),
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: AppColors.white, fontSize: 12),
                ),
              )
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(Routes().createRoute(const SearchPage()));
            },
            child: Container(
                height: 50,
                width: 50,
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColors.white),
                child: SvgPicture.asset('assets/auth/images/search.svg')),
          ),
        ],
      ),
    );
  }
}

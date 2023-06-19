import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../themes/colors.dart';

class MenuScanButton extends StatelessWidget {
  const MenuScanButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100), color: AppColors.black),
        child: SvgPicture.asset('assets/auth/images/scan.svg'));
  }
}

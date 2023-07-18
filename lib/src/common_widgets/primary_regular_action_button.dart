import 'package:flutter/material.dart';

import '../themes/colors.dart';

class PrimaryRegularActionButton extends StatelessWidget {
  const PrimaryRegularActionButton({
    super.key,
    required this.text,
    required this.action,
    required this.disable,
    this.showboxShadow,
  });
  final String text;
  final VoidCallback action;
  final bool disable;
  final bool? showboxShadow;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(colors: [
              AppColors.primaryGradientDeep,
              AppColors.primaryGradientLight
            ]),
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, 5),
                  spreadRadius: 2,
                  blurRadius: 13,
                  color: AppColors.primaryLightBorder)
            ]),
        child: Row(
          children: [
            const Spacer(),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

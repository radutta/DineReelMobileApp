import 'package:flutter/material.dart';

import '../../../themes/colors.dart';

class HighlightWidget extends StatelessWidget {
  const HighlightWidget({super.key, required this.image, required this.title});
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          width: 40,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              AppColors.primaryGradientLight,
              AppColors.primaryGradientDeep,
              Color.fromARGB(255, 203, 122, 24),
              Color.fromARGB(255, 145, 88, 18),
            ]),
            borderRadius: BorderRadius.circular(300),
          ),
          child: Image.asset(image),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: AppColors.black, fontSize: 10),
        )
      ],
    );
  }
}

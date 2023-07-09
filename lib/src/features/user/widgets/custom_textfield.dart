import 'package:flutter/material.dart';

import '../../../themes/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.title,
      required this.hinttext,
      required this.controller,
      required this.onTap,
      this.iscalender = false});
  final String title;
  final String hinttext;
  final TextEditingController controller;
  final VoidCallback onTap;
  final bool? iscalender;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 10),
        SizedBox(
          height: 56,
          child: TextFormField(
            controller: controller,
            cursorHeight: 23,
            style: Theme.of(context).textTheme.bodyMedium,
            decoration: InputDecoration(
                hintText: hinttext,
                hintStyle: Theme.of(context).textTheme.bodySmall,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                        color: AppColors.primaryGradientLight)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(color: AppColors.primaryGradientDeep)),
                suffixIcon: iscalender!
                    ? const Icon(Icons.calendar_month_outlined,
                        color: AppColors.black)
                    : null),
            onTap: onTap,
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../themes/colors.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key,
      required this.title,
      required this.hinttext,
      required this.controller});
  final String title;
  final String hinttext;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.displaySmall),
        const SizedBox(height: 3),
        TextFormField(
          controller: controller,
          style: Theme.of(context).textTheme.displaySmall,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            hintText: hinttext,
            hintStyle: Theme.of(context).textTheme.displaySmall,
            border: const OutlineInputBorder(borderSide: BorderSide()),
            focusedBorder: const OutlineInputBorder(
              borderSide:
                  BorderSide(color: AppColors.primaryGradientLight, width: 2),
            ),
          ),
        ),
      ],
    );
  }
}

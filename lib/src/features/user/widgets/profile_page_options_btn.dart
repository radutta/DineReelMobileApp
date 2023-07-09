import 'package:dinereel/src/themes/colors.dart';
import 'package:flutter/material.dart';

class ProfilePageOptionsBtn extends StatelessWidget {
  const ProfilePageOptionsBtn(
      {super.key,
      required this.title,
      required this.icon,
      required this.clickAction});
  final String title;
  final IconData icon;
  final VoidCallback clickAction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: clickAction,
      child: Container(
        height: 45,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.grey),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 20),
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}

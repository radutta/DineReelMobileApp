// ignore_for_file: public_member_api_docs, sort_constructors_first
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

class PasswordTextFieldWidget extends StatefulWidget {
  const PasswordTextFieldWidget({
    Key? key,
    required this.title,
    required this.hinttext,
    required this.controller,
  }) : super(key: key);
  final String title;
  final String hinttext;
  final TextEditingController controller;

  @override
  State<PasswordTextFieldWidget> createState() =>
      _PasswordTextFieldWidgetState();
}

class _PasswordTextFieldWidgetState extends State<PasswordTextFieldWidget> {
  bool showpassword = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title, style: Theme.of(context).textTheme.displaySmall),
        const SizedBox(height: 3),
        TextFormField(
          controller: widget.controller,
          style: Theme.of(context).textTheme.displaySmall,
          obscureText: showpassword,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            hintText: widget.hinttext,
            hintStyle: Theme.of(context).textTheme.displaySmall,
            border: const OutlineInputBorder(borderSide: BorderSide()),
            focusedBorder: const OutlineInputBorder(
              borderSide:
                  BorderSide(color: AppColors.primaryGradientLight, width: 2),
            ),
            suffixIcon: showpassword
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        showpassword = false;
                      });
                    },
                    child: const Icon(Icons.visibility_off))
                : GestureDetector(
                    onTap: () {
                      setState(() {
                        showpassword = true;
                      });
                    },
                    child: const Icon(Icons.visibility)),
          ),
        ),
      ],
    );
  }
}

import 'dart:ui';

import 'package:dinereel/src/themes/colors.dart';
import 'package:flutter/material.dart';

class OutletPopupWidget extends StatefulWidget {
  const OutletPopupWidget({super.key});

  @override
  State<OutletPopupWidget> createState() => _OutletPopupWidgetState();
}

class _OutletPopupWidgetState extends State<OutletPopupWidget> {
  int selected = 0;
  String? selectedValue = "Park Street";
  final _dropdownFormKey = GlobalKey<FormState>();
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
          value: "Park Street",
          child: Text("Park Street",
              style: Theme.of(context).textTheme.bodyMedium)),
      DropdownMenuItem(
          value: 'Chinar Park',
          child: Text('Chinar Park',
              style: Theme.of(context).textTheme.bodyMedium)),
      DropdownMenuItem(
          value: 'Nagerbazar',
          child: Text('Nagerbazar',
              style: Theme.of(context).textTheme.bodyMedium)),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
      child: Stack(
        children: [
          AlertDialog(
            contentPadding: const EdgeInsets.all(0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: Container(
              width: 379,
              decoration: ShapeDecoration(
                color: AppColors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                shadows: const [
                  BoxShadow(
                    color: AppColors.recentordercardBoxShadow,
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Form(
                key: _dropdownFormKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 10),
                    Center(
                      child: Text(
                        'Change Outlets',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColors.black, width: 2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColors.primaryGradientDeep,
                                  width: 2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColors.black, width: 2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            filled: true,
                            fillColor: AppColors.white,
                          ),
                          validator: (value) =>
                              value == null ? "Park Street" : null,
                          dropdownColor: AppColors.white,
                          value: selectedValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                          items: dropdownItems),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 200,
            left: MediaQuery.of(context).size.width / 2 - 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColors.grey),
                child: const Icon(Icons.close),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

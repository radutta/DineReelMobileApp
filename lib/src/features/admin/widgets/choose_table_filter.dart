import 'package:dinereel/src/themes/colors.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/primary_regular_action_button.dart';
import '../../../routing/routing_function.dart';
import '../../menu/screens/menu_page.dart';

class ChooseTableWidget extends StatefulWidget {
  const ChooseTableWidget({super.key});

  @override
  State<ChooseTableWidget> createState() => _ChooseTableWidgetState();
}

class _ChooseTableWidgetState extends State<ChooseTableWidget> {
  String? selectedValue = "Table No 1";
  final _dropdownFormKey = GlobalKey<FormState>();
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
          value: "Table No 1",
          child: Text("Table No 1",
              style: Theme.of(context).textTheme.bodyMedium)),
      DropdownMenuItem(
          value: 'Table No 2',
          child: Text('Table No 2',
              style: Theme.of(context).textTheme.bodyMedium)),
      DropdownMenuItem(
          value: 'Table No 3',
          child: Text('Table No 3',
              style: Theme.of(context).textTheme.bodyMedium)),
      DropdownMenuItem(
          value: 'Table No 4',
          child: Text('Table No 4',
              style: Theme.of(context).textTheme.bodyMedium)),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Choose Table',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const Icon(Icons.keyboard_arrow_down, size: 30)
              ],
            ),
          ),
        ),
        Form(
          key: _dropdownFormKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: DropdownButtonFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.black, width: 2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: AppColors.primaryGradientDeep, width: 2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.black, width: 2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  filled: true,
                  fillColor: AppColors.white,
                ),
                validator: (value) => value == null ? "Table No 1" : null,
                dropdownColor: AppColors.white,
                value: selectedValue,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue!;
                  });
                },
                items: dropdownItems),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: PrimaryRegularActionButton(
            text: "Show Menu",
            action: () {
              Navigator.of(context).push(Routes().createRoute(const MenuHome(
                type: 'admin',
              )));
            },
            disable: false,
          ),
        ),
        const SizedBox(height: 30)
      ],
    );
  }
}

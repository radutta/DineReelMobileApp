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
  double height = 0;
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            if (height == 0) {
              setState(() {
                height = 39 * 4;
              });
            } else {
              setState(() {
                height = 0;
              });
            }
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
                const Icon(
                  Icons.keyboard_arrow_down,
                  size: 30,
                )
              ],
            ),
          ),
        ),
        AnimatedContainer(
          height: height,
          duration: const Duration(milliseconds: 300),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView.builder(
              padding: const EdgeInsets.all(0),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      setState(() {
                        selectedindex = index;
                      });
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Table Number ${index + 1} ",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: AppColors.black),
                          ),
                          alignment: Alignment.center,
                          child: selectedindex == index
                              ? Container(
                                  width: 15,
                                  height: 15,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: AppColors.primaryGradientLight),
                                )
                              : Container(),
                        )
                      ],
                    ),
                  ),
                );
              }),
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

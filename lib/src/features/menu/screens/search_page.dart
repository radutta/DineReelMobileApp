import 'package:dinereel/src/features/menu/models/menu_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../themes/colors.dart';
import '../widgets/menu_card.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.primaryappbarColor,
                      AppColors.primaryGradientDeep,
                    ])),
            child: Column(
              children: [
                const SizedBox(height: 39),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back)),
                    const SizedBox(width: 10),
                    Expanded(
                      child: SizedBox(
                        height: 56,
                        child: TextFormField(
                          cursorHeight: 23,
                          style: Theme.of(context).textTheme.bodySmall,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                      color: Colors.transparent)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                      color: Colors.transparent)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 0),
                              hintText: 'Search',
                              hintStyle: Theme.of(context).textTheme.bodySmall,
                              suffixIcon: SizedBox(
                                height: 24,
                                width: 24,
                                child: Center(
                                  child: SvgPicture.asset(
                                    'assets/menu/images/Cross-Circle.svg',
                                  ),
                                ),
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Search results for ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: 'burger',
                    style: TextStyle(
                      color: Color(0xFFFFA000),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: MediaQuery.of(context).size.height * .78,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: ListView.builder(
                  padding: const EdgeInsets.all(0),
                  itemCount: menuItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 33),
                      child: MenuCardWidget(
                        index: index,
                        data: menuItems,
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:dinereel/src/features/admin/widgets/choose_table_filter.dart';
import 'package:dinereel/src/features/user/screens/user_profile_page.dart';
import 'package:flutter/material.dart';
import '../../../common_widgets/category_filter.dart';
import '../../../routing/routing_function.dart';

import '../../menu/screens/menu_page.dart';
import '../widgets/business_menu_card.dart';
import '../widgets/primary_regular_action_button.dart';

class BusinessMenuPage extends StatefulWidget {
  const BusinessMenuPage({super.key});

  @override
  State<BusinessMenuPage> createState() => _BusinessMenuPageState();
}

class _BusinessMenuPageState extends State<BusinessMenuPage> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      width: 54,
                      height: 54,
                      "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?cs=srgb&dl=pexels-mohamed-abdelghaffar-771742.jpg&fm=jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'RannaBati',
                            style: TextStyle(
                              color: Color(0xFF3D405B),
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down)
                        ],
                      ),
                      Text(
                        'Traditional Indian Food',
                        style: TextStyle(
                          color: Color(0xFF3D405B),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.0),
                              ),
                            ),
                            context: context,
                            builder: (context) {
                              return const ChooseTableWidget();
                            });
                      },
                      child: Image.asset('assets/admin/filter.png')),
                  const SizedBox(width: 10),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(Routes()
                            .createRoute(const UserProfilePage(type: 'admin')));
                      },
                      child: Image.asset('assets/admin/profile.png'))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child:
                  Text('Menu', style: Theme.of(context).textTheme.titleLarge),
            ),
            const CategoryFilterWidget(),
            const SizedBox(height: 20),
            const BusinessMenuCard(),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: PrimaryRegularActionButton(
                text: "Select table",
                action: () {
                  Navigator.of(context)
                      .push(Routes().createRoute(const MenuHome(
                    type: 'admin',
                  )));
                },
                disable: false,
              ),
            ),
            const SizedBox(height: 45)
          ],
        ),
      ),
    );
  }
}

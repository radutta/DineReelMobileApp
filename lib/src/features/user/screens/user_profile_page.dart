import 'package:flutter/material.dart';

import '../widgets/profile_page_options_btn.dart';
import '../widgets/recent_order_widget.dart';
import '../widgets/user_details_card.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: UserDetailsCard(),
            ),
            const SizedBox(height: 30),
            const RecentOrderWidget(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ProfilePageOptionsBtn(
                  title: 'Settings',
                  icon: Icons.settings_outlined,
                  clickAction: () {}),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ProfilePageOptionsBtn(
                  title: 'Logout',
                  icon: Icons.person_outlined,
                  clickAction: () {}),
            ),
            const SizedBox(height: 20),
          ]),
        ),
      ),
    );
  }
}

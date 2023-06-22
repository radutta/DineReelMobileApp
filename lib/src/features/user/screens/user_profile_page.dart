import 'package:flutter/material.dart';

import '../widgets/recent_order_widget.dart';
import '../widgets/user_details_card.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: UserDetailsCard(),
          ),
          SizedBox(height: 30),
          RecentOrderWidget()
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../routing/routing_function.dart';
import '../../../themes/colors.dart';
import '../widgets/primary_regular_action_button.dart';
import 'business_menu_page.dart';

class BusinessHomePage extends StatelessWidget {
  const BusinessHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  const Spacer()
                ],
              ),
              const SizedBox(height: 20),
              Text('Thanks for choosing\nDinereel',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: AppColors.black)),
              const SizedBox(height: 10),
              const Text(
                'Our team is working to make your store outlet\nready. Please be with us.',
                style: TextStyle(
                  color: Color(0xFF303136),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 40),
              Center(child: Image.asset('assets/admin/bg.png')),
              const SizedBox(height: 40),
              PrimaryRegularActionButton(
                text: "CALL DINEREEL",
                action: () {
                  Navigator.of(context)
                      .push(Routes().createRoute(const BusinessMenuPage()));
                },
                disable: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

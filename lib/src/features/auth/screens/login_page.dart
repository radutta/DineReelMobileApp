import 'package:dinereel/src/features/auth/screens/otp_vedification_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../common_widgets/primary_regular_action_button.dart';
import '../../../constants/colors.dart';
import '../../../routing/routing_function.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back,
                          color: AppColors.primaryDarkFont)),
                  GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.black),
                      ))
                ],
              ),
            ),
            const SizedBox(height: 49),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Enter your mobile\nnumber to get otp',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
            ),
            const SizedBox(height: 33),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Phone Number'),
            ),
            const SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: IntlPhoneField(
                decoration: const InputDecoration(
                  counterText: "",
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  hintText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColors.prinaryGradientLight, width: 2),
                  ),
                ),
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
                onCountryChanged: (country) {
                  print('Country changed to: ${country.name}');
                },
              ),
            ),
            const SizedBox(height: 33),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: PrimaryRegularActionButton(
                  text: 'Get OTP',
                  action: () {
                    Navigator.of(context)
                        .push(Routes().createRouteUp(OtpVerificationPage()));
                  },
                  disable: false,
                ),
              ),
            ),
            const SizedBox(height: 33),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: AppColors.primaryLightBorder,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('Or signing with...'),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: AppColors.primaryLightBorder,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 33),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset('assets/images/facebook.svg'),
                  const SizedBox(width: 40),
                  SvgPicture.asset('assets/images/google.svg')
                ],
              ),
            ),
            const Spacer(),
            const Center(
              child: Text(
                'Use Dinereel Business',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 23),
            const Center(
              child: Text(
                'By creating an account, you accept our',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Center(
              child: RichText(
                  text: const TextSpan(children: [
                TextSpan(
                    text: 'Terms and condition',
                    style: TextStyle(color: AppColors.black)),
                TextSpan(
                    text: ' you read our ',
                    style: TextStyle(color: Colors.grey)),
                TextSpan(
                    text: 'Privacy Policy.',
                    style: TextStyle(color: AppColors.black))
              ])),
            ),
            const SizedBox(height: 23),
          ],
        ),
      ),
    );
  }
}

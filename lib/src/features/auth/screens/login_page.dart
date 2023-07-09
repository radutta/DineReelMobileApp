import 'package:dinereel/src/features/auth/screens/otp_vedification_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../common_widgets/primary_regular_action_button.dart';
import '../../../themes/colors.dart';
import '../../../routing/routing_function.dart';
import '../../menu/screens/menu_page.dart';
import '../widgets/login_bottom_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
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
                      onTap: () {
                        Navigator.of(context)
                            .push(Routes().createRoute(const MenuHome()));
                      },
                      child: Text('skip'.tr(),
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(fontWeight: FontWeight.bold)))
                ],
              ),
            ),
            const SizedBox(height: 49),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('enter_mobile_number'.tr(),
                  style: Theme.of(context).textTheme.titleLarge),
            ),
            const SizedBox(height: 33),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('phone_no'.tr(),
                  style: Theme.of(context).textTheme.displaySmall),
            ),
            const SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: IntlPhoneField(
                initialCountryCode: 'IN',
                style: Theme.of(context).textTheme.bodyMedium,
                decoration: InputDecoration(
                  counterText: "",
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  hintText: 'phone_no'.tr(),
                  hintStyle: Theme.of(context).textTheme.bodyMedium,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColors.primaryGradientLight, width: 2),
                  ),
                ),
                onChanged: (phone) {},
                onCountryChanged: (country) {},
              ),
            ),
            const SizedBox(height: 33),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: PrimaryRegularActionButton(
                  text: 'get_otp'.tr(),
                  action: () {
                    Navigator.of(context).push(
                        Routes().createRouteUp(const OtpVerificationPage()));
                  },
                  disable: false,
                ),
              ),
            ),
            const SizedBox(height: 33),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Expanded(
                    child: Divider(
                      thickness: 1,
                      color: AppColors.primaryLightBorder,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'or_signin'.tr(),
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Expanded(
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
                  SvgPicture.asset('assets/auth/images/facebook.svg'),
                  const SizedBox(width: 40),
                  SvgPicture.asset('assets/auth/images/google.svg')
                ],
              ),
            ),
            const Spacer(),
            const LoginBottomWidget()
          ],
        ),
      ),
    );
  }
}

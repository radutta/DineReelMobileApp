import 'package:dinereel/src/features/auth/screens/otp_vedification_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../common_widgets/primary_regular_action_button.dart';
import '../../../themes/colors.dart';
import '../../../routing/routing_function.dart';
import '../../menu/screens/qr_scan_page.dart';
import '../widgets/login_bottom_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController controller;
  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 5.h),
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const QrScanPage();
                        }));
                      },
                      child: Text('skip'.tr(),
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(fontWeight: FontWeight.bold)))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20.h),
              child: Text('enter_mobile_number'.tr(),
                  style: Theme.of(context).textTheme.titleLarge),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('phone_no'.tr(),
                  style: Theme.of(context).textTheme.displaySmall),
            ),
            SizedBox(height: 3.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: IntlPhoneField(
                controller: controller,
                initialCountryCode: 'IN',
                style: Theme.of(context).textTheme.bodyMedium,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  counterText: "",
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  hintText: 'phone_no'.tr(),
                  hintStyle: Theme.of(context).textTheme.displaySmall,
                  errorStyle: const TextStyle(fontSize: 12),
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
            SizedBox(height: 30.h),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: PrimaryRegularActionButton(
                  text: 'get_otp'.tr(),
                  action: () {
                    if (controller.text.isNotEmpty &&
                        controller.text.length == 10) {
                      Navigator.of(context)
                          .push(Routes().createRouteUp(OtpVerificationPage(
                        number: controller.text,
                      )));
                    }
                  },
                  disable: false,
                ),
              ),
            ),
            SizedBox(height: 30.h),
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
            SizedBox(height: 30.h),
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
            const LoginBottomWidget(),
          ],
        ),
      ),
    );
  }
}

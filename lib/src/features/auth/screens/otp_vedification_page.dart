import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../themes/colors.dart';
import '../../../routing/routing_function.dart';
import 'login_success_page.dart';

class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage({super.key});

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  late final TextEditingController pinController;
  final focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    pinController = TextEditingController();
  }

  @override
  void dispose() {
    pinController.dispose();
    super.dispose();
  }

  final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.black,
        ),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: AppColors.white),
        child: Stack(
          children: [
            Container(
              height: 300,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  AppColors.primaryGradientLight,
                  AppColors.primaryGradientDeep,
                ]),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back,
                              color: AppColors.primaryDarkFont)),
                      Text(
                        "verify_otp".tr(),
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
            Positioned(
              top: 150,
              left: 20,
              right: 20,
              child: Center(
                child: Column(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30)),
                            color: AppColors.white),
                        child: Column(
                          children: [
                            Image.asset(
                                'assets/auth/images/verfication_page_img.png'),
                            Text(
                              'verify_code'.tr(),
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displaySmall,
                            )
                          ],
                        )),
                    const SizedBox(height: 33),
                    Pinput(
                      controller: pinController,
                      focusNode: focusNode,
                      androidSmsAutofillMethod:
                          AndroidSmsAutofillMethod.smsUserConsentApi,
                      listenForMultipleSmsOnAndroid: true,
                      defaultPinTheme: defaultPinTheme,
                      validator: (value) {
                        return value == '2222' ? '' : 'pin_incorrect'.tr();
                      },
                      errorTextStyle: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.red),
                      hapticFeedbackType: HapticFeedbackType.lightImpact,
                      onCompleted: (pin) {
                        Navigator.of(context).push(
                            Routes().createRoute(const LoginSuccessPage()));
                      },
                      onChanged: (value) {},
                      cursor: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 9),
                            width: 22,
                            height: 1,
                            color: AppColors.primaryGradientDeep,
                          ),
                        ],
                      ),
                      focusedPinTheme: defaultPinTheme.copyWith(
                        decoration: defaultPinTheme.decoration!.copyWith(
                          borderRadius: BorderRadius.circular(8),
                          border:
                              Border.all(color: AppColors.primaryGradientDeep),
                        ),
                      ),
                      submittedPinTheme: defaultPinTheme.copyWith(
                        decoration: defaultPinTheme.decoration!.copyWith(
                          color: AppColors.pinbgColor,
                          borderRadius: BorderRadius.circular(8),
                          border:
                              Border.all(color: AppColors.primaryGradientDeep),
                        ),
                      ),
                      errorPinTheme: defaultPinTheme.copyBorderWith(
                        border: Border.all(color: Colors.redAccent),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'resend_otp'.tr(),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displaySmall,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

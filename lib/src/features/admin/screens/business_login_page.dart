import 'package:dinereel/src/features/admin/screens/business_signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../routing/routing_function.dart';
import '../../../themes/colors.dart';
import '../widgets/email_tab.dart';
import '../widgets/phone_tab.dart';

class BusinessLoginPage extends StatefulWidget {
  const BusinessLoginPage({super.key});

  @override
  State<BusinessLoginPage> createState() => _BusinessLoginPageState();
}

class _BusinessLoginPageState extends State<BusinessLoginPage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back, color: Colors.black),
                    ),
                    const Spacer()
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'Welcome to ',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: AppColors.black)),
                      TextSpan(
                          text: 'Dinereel Business ',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.primaryGradientDeep)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('Enter your email address to get otp',
                    style: Theme.of(context).textTheme.displaySmall),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.0),
                    border: const Border(
                        bottom: BorderSide(color: Colors.grey, width: 1)),
                  ),
                  child: TabBar(
                    indicatorWeight: 3,
                    indicatorColor: AppColors.black,
                    labelColor: AppColors.black,
                    unselectedLabelColor: AppColors.grey,
                    controller: _controller,
                    tabs: const [
                      Tab(
                        icon: Text(
                          'Email',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      Tab(
                        icon: Text(
                          'Phone',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .43,
                child: TabBarView(controller: _controller, children: const [
                  EmailTab(),
                  PhoneTab(),
                ]),
              ),
              const SizedBox(height: 40),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('New to Dinereel?',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.displaySmall),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            Routes().createRoute(const BusinessSignUpPage()));
                      },
                      child: Text(
                        'Join as a partner',
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'By creating an account, you accept our\n',
                          style: Theme.of(context).textTheme.displaySmall),
                      TextSpan(
                          text: 'Terms and conditions',
                          style: Theme.of(context).textTheme.displaySmall),
                      TextSpan(
                          text: ' you read our ',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(color: AppColors.greytextcolor)),
                      TextSpan(
                          text: 'Privacy Policy.',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(color: AppColors.blacktextcolot)),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

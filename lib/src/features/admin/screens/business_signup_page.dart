import 'package:flutter/material.dart';

import '../../../routing/routing_function.dart';
import '../../../themes/colors.dart';
import '../widgets/primary_regular_action_button.dart';
import '../widgets/textfield_widget.dart';
import 'business_home_page.dart';

class BusinessSignUpPage extends StatefulWidget {
  const BusinessSignUpPage({super.key});

  @override
  State<BusinessSignUpPage> createState() => _BusinessSignUpPageState();
}

class _BusinessSignUpPageState extends State<BusinessSignUpPage> {
  late TextEditingController nameController;
  late TextEditingController phoneController;
  bool showmore = false;
  @override
  void initState() {
    nameController = TextEditingController();
    phoneController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              Text('Partner with Dinereel ',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: AppColors.black)),
              const SizedBox(height: 20),
              TextFieldWidget(
                  title: 'Name*',
                  hinttext: 'Sample name',
                  controller: nameController),
              const SizedBox(height: 10),
              TextFieldWidget(
                  title: 'Phone Nubmer*',
                  hinttext: '+7000045000',
                  controller: nameController),
              const SizedBox(height: 10),
              TextFieldWidget(
                  title: 'Address*',
                  hinttext: '9/19 N.P.Dutta Road',
                  controller: nameController),
              const SizedBox(height: 10),
              TextFieldWidget(
                  title: 'Owner Name*',
                  hinttext: 'Sample name',
                  controller: nameController),
              const SizedBox(height: 10),
              TextFieldWidget(
                  title: 'fssai Number*',
                  hinttext: '12000ktrlkrt',
                  controller: nameController),
              const SizedBox(height: 10),
              TextFieldWidget(
                  title: 'Password*',
                  hinttext: 'Password',
                  controller: nameController),
              const SizedBox(height: 10),
              TextFieldWidget(
                  title: 'Confirm Password*',
                  hinttext: 'Password',
                  controller: nameController),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showmore = !showmore;
                      });
                    },
                    child: Container(
                      width: 72,
                      height: 28,
                      padding: const EdgeInsets.symmetric(horizontal: 9),
                      decoration: ShapeDecoration(
                        color: showmore
                            ? const Color(0xFFD9D9D9)
                            : const Color(0xFF303136),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        showmore ? 'View less' : 'View All',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color:
                              showmore ? const Color(0xFF303136) : Colors.white,
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFD9D9D9),
                          shape: OvalBorder(),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Cafe',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF303136),
                          fontSize: 13,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFD9D9D9),
                          shape: OvalBorder(),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Restaurant',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF303136),
                          fontSize: 13,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFD9D9D9),
                          shape: OvalBorder(),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Fast Food\nRestaurants',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF303136),
                          fontSize: 13,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFD9D9D9),
                          shape: OvalBorder(),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Barbeque\nGrill',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF303136),
                          fontSize: 13,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              showmore
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFD9D9D9),
                                shape: OvalBorder(),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Cafe',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF303136),
                                fontSize: 13,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFD9D9D9),
                                shape: OvalBorder(),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Restaurant',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF303136),
                                fontSize: 13,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFD9D9D9),
                                shape: OvalBorder(),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Fast Food\nRestaurants',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF303136),
                                fontSize: 13,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFD9D9D9),
                                shape: OvalBorder(),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Barbeque\nGrill',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF303136),
                                fontSize: 13,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  : Container(),
              const SizedBox(height: 50),
              PrimaryRegularActionButton(
                text: "Sign Up",
                action: () {
                  Navigator.of(context)
                      .push(Routes().createRoute(const BusinessHomePage()));
                },
                disable: false,
              ),
              const SizedBox(height: 30),
            ]),
          ),
        ),
      ),
    );
  }
}

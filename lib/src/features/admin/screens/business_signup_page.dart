import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

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
  late TextEditingController addressController;
  late TextEditingController ownerController;
  late TextEditingController fssaiController;
  late TextEditingController passwordController;
  late TextEditingController confirmpasswordController;
  bool showmore = false;
  int selestedindex = 0;
  List<int> selectedindexs = [];
  List<String> morecategory = [
    'Cafe',
    'Restaurant',
    'Fast Food\nRestaurants',
    'Barbeque\nGrill',
    'Cafe',
    'Restaurant',
    'Fast Food\nRestaurants',
    'Barbeque\nGrill',
  ];
  List<String> category = [
    'Cafe',
    'Restaurant',
    'Fast Food\nRestaurants',
    'Barbeque\nGrill',
  ];
  @override
  void initState() {
    nameController = TextEditingController();
    phoneController = TextEditingController();
    addressController = TextEditingController();
    ownerController = TextEditingController();
    fssaiController = TextEditingController();
    passwordController = TextEditingController();
    confirmpasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    addressController.dispose();
    ownerController.dispose();
    fssaiController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
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

              Text('Phone Nubmer*',
                  style: Theme.of(context).textTheme.displaySmall),
              const SizedBox(height: 3),
              IntlPhoneField(
                controller: phoneController,
                initialCountryCode: 'IN',
                style: Theme.of(context).textTheme.bodyMedium,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  counterText: "",
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  hintText: '+7000045000',
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
              const SizedBox(height: 10),
              TextFieldWidget(
                  title: 'Address*',
                  hinttext: '9/19 N.P.Dutta Road',
                  controller: addressController),
              const SizedBox(height: 10),
              TextFieldWidget(
                  title: 'Owner Name*',
                  hinttext: 'Sample name',
                  controller: ownerController),
              const SizedBox(height: 10),
              TextFieldWidget(
                  title: 'fssai Number*',
                  hinttext: '12000ktrlkrt',
                  controller: fssaiController),
              const SizedBox(height: 10),
              PasswordTextFieldWidget(
                  title: 'Password*',
                  hinttext: 'Password',
                  controller: passwordController),
              const SizedBox(height: 10),
              PasswordTextFieldWidget(
                  title: 'Confirm Password*',
                  hinttext: 'Password',
                  controller: confirmpasswordController),
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
                      width: 73,
                      height: 28,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (selectedindexs.contains(0)) {
                        setState(() {
                          selectedindexs.remove(0);
                        });
                      } else {
                        setState(() {
                          selectedindexs.add(0);
                        });
                      }
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              color: const Color(0xFFD9D9D9),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color: selectedindexs.contains(0)
                                    ? AppColors.primaryGradientDeep
                                    : const Color(0xFFD9D9D9),
                                width: 2,
                              )),
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
                  ),
                  GestureDetector(
                    onTap: () {
                      if (selectedindexs.contains(1)) {
                        setState(() {
                          selectedindexs.remove(1);
                        });
                      } else {
                        setState(() {
                          selectedindexs.add(1);
                        });
                      }
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              color: const Color(0xFFD9D9D9),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color: selectedindexs.contains(1)
                                    ? AppColors.primaryGradientDeep
                                    : const Color(0xFFD9D9D9),
                                width: 2,
                              )),
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
                  ),
                  GestureDetector(
                    onTap: () {
                      if (selectedindexs.contains(2)) {
                        setState(() {
                          selectedindexs.remove(2);
                        });
                      } else {
                        setState(() {
                          selectedindexs.add(2);
                        });
                      }
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              color: const Color(0xFFD9D9D9),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color: selectedindexs.contains(2)
                                    ? AppColors.primaryGradientDeep
                                    : const Color(0xFFD9D9D9),
                                width: 2,
                              )),
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
                  ),
                  GestureDetector(
                    onTap: () {
                      if (selectedindexs.contains(3)) {
                        setState(() {
                          selectedindexs.remove(3);
                        });
                      } else {
                        setState(() {
                          selectedindexs.add(3);
                        });
                      }
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              color: const Color(0xFFD9D9D9),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color: selectedindexs.contains(3)
                                    ? AppColors.primaryGradientDeep
                                    : const Color(0xFFD9D9D9),
                                width: 2,
                              )),
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
                  ),
                ],
              ),
              const SizedBox(height: 20),
              showmore
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (selectedindexs.contains(4)) {
                              setState(() {
                                selectedindexs.remove(4);
                              });
                            } else {
                              setState(() {
                                selectedindexs.add(4);
                              });
                            }
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFD9D9D9),
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                      color: selectedindexs.contains(4)
                                          ? AppColors.primaryGradientDeep
                                          : const Color(0xFFD9D9D9),
                                      width: 2,
                                    )),
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
                        ),
                        GestureDetector(
                          onTap: () {
                            if (selectedindexs.contains(5)) {
                              setState(() {
                                selectedindexs.remove(5);
                              });
                            } else {
                              setState(() {
                                selectedindexs.add(5);
                              });
                            }
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFD9D9D9),
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                      color: selectedindexs.contains(5)
                                          ? AppColors.primaryGradientDeep
                                          : const Color(0xFFD9D9D9),
                                      width: 2,
                                    )),
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
                        ),
                        GestureDetector(
                          onTap: () {
                            if (selectedindexs.contains(6)) {
                              setState(() {
                                selectedindexs.remove(6);
                              });
                            } else {
                              setState(() {
                                selectedindexs.add(6);
                              });
                            }
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFD9D9D9),
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                      color: selectedindexs.contains(6)
                                          ? AppColors.primaryGradientDeep
                                          : const Color(0xFFD9D9D9),
                                      width: 2,
                                    )),
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
                        ),
                        GestureDetector(
                          onTap: () {
                            if (selectedindexs.contains(7)) {
                              setState(() {
                                selectedindexs.remove(7);
                              });
                            } else {
                              setState(() {
                                selectedindexs.add(7);
                              });
                            }
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFD9D9D9),
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                      color: selectedindexs.contains(7)
                                          ? AppColors.primaryGradientDeep
                                          : const Color(0xFFD9D9D9),
                                      width: 2,
                                    )),
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
                        ),
                      ],
                    )
                  : Container(),
              // GridView.count(
              //     physics: const NeverScrollableScrollPhysics(),
              //     shrinkWrap: true,
              //     crossAxisCount: 3,
              //     children: showmore
              //         ? morecategory
              //             .map(
              //               (e) => Column(
              //                 mainAxisAlignment: MainAxisAlignment.center,
              //                 children: [
              //                   Container(
              //                     width: 70,
              //                     height: 70,
              //                     decoration: const ShapeDecoration(
              //                       color: Color(0xFFD9D9D9),
              //                       shape: OvalBorder(),
              //                     ),
              //                   ),
              //                   const SizedBox(height: 10),
              //                   SizedBox(
              //                     width: 70,
              //                     child: Text(
              //                       e,
              //                       textAlign: TextAlign.center,
              //                       overflow: TextOverflow.ellipsis,
              //                       style: const TextStyle(
              //                         color: Color(0xFF303136),
              //                         fontSize: 12,
              //                         fontFamily: 'Inter',
              //                         fontWeight: FontWeight.w400,
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             )
              //             .toList()
              //         : category
              //             .map(
              //               (e) => Column(
              //                 mainAxisAlignment: MainAxisAlignment.center,
              //                 // mainAxisSize: MainAxisSize.min,
              //                 children: [
              //                   Container(
              //                     width: 70,
              //                     height: 70,
              //                     decoration: const ShapeDecoration(
              //                       color: Color(0xFFD9D9D9),
              //                       shape: OvalBorder(),
              //                     ),
              //                   ),
              //                   const SizedBox(height: 10),
              //                   SizedBox(
              //                     width: 60,
              //                     child: Text(
              //                       e,
              //                       textAlign: TextAlign.center,
              //                       overflow: TextOverflow.ellipsis,
              //                       style: const TextStyle(
              //                         color: Color(0xFF303136),
              //                         fontSize: 12,
              //                         fontFamily: 'Inter',
              //                         fontWeight: FontWeight.w400,
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             )
              //             .toList()),
              SizedBox(height: 70.h),
            ]),
          ),
        ),
      ),
      bottomSheet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 30),
            child: PrimaryRegularActionButton(
              text: "Sign Up",
              action: () {
                Navigator.of(context)
                    .push(Routes().createRoute(const BusinessHomePage()));
              },
              disable: false,
            ),
          ),
        ],
      ),
    );
  }
}

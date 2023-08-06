import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../common_widgets/primary_regular_action_button.dart';
import '../../../routing/routing_function.dart';
import '../../../themes/colors.dart';
import '../screens/business_menu_page.dart';

class PhoneTab extends StatefulWidget {
  const PhoneTab({super.key});

  @override
  State<PhoneTab> createState() => _PhoneTabState();
}

class _PhoneTabState extends State<PhoneTab> {
  bool isvisible = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Text('Phone Number', style: Theme.of(context).textTheme.displaySmall),
          SizedBox(height: 3.h),
          IntlPhoneField(
            initialCountryCode: 'IN',
            style: Theme.of(context).textTheme.bodyMedium,
            decoration: InputDecoration(
              counterText: "",
              contentPadding: const EdgeInsets.all(0),
              hintText: '8495654568',
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.grey),
              border: const OutlineInputBorder(borderSide: BorderSide()),
              focusedBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: AppColors.primaryGradientLight, width: 2),
              ),
            ),
            onChanged: (phone) {},
            onCountryChanged: (country) {},
          ),
          SizedBox(height: 10.h),
          Text('Password', style: Theme.of(context).textTheme.displaySmall),
          SizedBox(height: 3.h),
          TextFormField(
            style: Theme.of(context).textTheme.bodyMedium,
            obscureText: isvisible,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                hintText: 'Password',
                hintStyle: Theme.of(context).textTheme.displaySmall,
                border: const OutlineInputBorder(borderSide: BorderSide()),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: AppColors.primaryGradientLight, width: 2),
                ),
                suffixIcon: isvisible
                    ? GestureDetector(
                        onTap: () {
                          setState(() {
                            isvisible = false;
                          });
                        },
                        child: const Icon(Icons.visibility_off))
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            isvisible = true;
                          });
                        },
                        child: const Icon(Icons.visibility))),
          ),
          SizedBox(height: 40.h),
          PrimaryRegularActionButton(
              text: "SUBMIT",
              action: () {
                Navigator.of(context)
                    .push(Routes().createRoute(const BusinessMenuPage()));
              },
              disable: false),
        ],
      ),
    );
  }
}

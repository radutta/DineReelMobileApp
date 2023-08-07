import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_widgets/primary_regular_action_button.dart';
import '../../../routing/routing_function.dart';
import '../../../themes/colors.dart';
import '../screens/business_menu_page.dart';

class EmailTab extends StatefulWidget {
  const EmailTab({super.key});

  @override
  State<EmailTab> createState() => _EmailTabState();
}

class _EmailTabState extends State<EmailTab> {
  bool isvisible = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Text('Email Address',
              style: Theme.of(context).textTheme.displaySmall),
          SizedBox(height: 3.h),
          TextFormField(
            style: Theme.of(context).textTheme.displaySmall,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              hintText: 'email@gmail.com',
              hintStyle: Theme.of(context).textTheme.displaySmall,
              border: const OutlineInputBorder(borderSide: BorderSide()),
              focusedBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: AppColors.primaryGradientLight, width: 2),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Text('Password', style: Theme.of(context).textTheme.displaySmall),
          SizedBox(height: 3.h),
          TextFormField(
            style: Theme.of(context).textTheme.displaySmall,
            obscureText: isvisible,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              hintText: 'Password',
              hintStyle: Theme.of(context).textTheme.displaySmall,
              border: const OutlineInputBorder(borderSide: BorderSide()),
              focusedBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: AppColors.primaryGradientLight, width: 2),
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
                      child: const Icon(Icons.visibility)),
            ),
          ),
          SizedBox(height: 40.h),
          PrimaryRegularActionButton(
            text: "SUBMIT",
            action: () {
              Navigator.of(context)
                  .push(Routes().createRoute(const BusinessMenuPage()));

              //   Navigator.of(context).push(Routes().createRoute(const LoginPage()));
            },
            disable: false,
          ),
        ],
      ),
    );
  }
}

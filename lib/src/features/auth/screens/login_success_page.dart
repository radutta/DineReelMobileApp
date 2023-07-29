import 'dart:async';

import 'package:dinereel/src/features/menu/screens/menu_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../themes/colors.dart';

class LoginSuccessPage extends StatefulWidget {
  const LoginSuccessPage({super.key});

  @override
  State<LoginSuccessPage> createState() => _LoginSuccessPageState();
}

class _LoginSuccessPageState extends State<LoginSuccessPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const MenuHome(type: 'loggedIn',);
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Stack(
          children: [
            // Container(
            //   height: 200,
            //   width: MediaQuery.of(context).size.width,
            //   decoration: const BoxDecoration(
            //     gradient: LinearGradient(colors: [
            //       AppColors.primaryGradientLight,
            //       AppColors.primaryGradientDeep
            //     ]),
            //   ),
            //   child: Column(
            //     children: [
            //       const SizedBox(height: 80),
            //       Text('get_ready_to_explore'.tr(),
            //           textAlign: TextAlign.center,
            //           style: Theme.of(context).textTheme.titleLarge),
            //       const SizedBox(height: 30),
            //     ],
            //   ),
            // ),
            // CustomPaint(
            //   painter: SemicirclePainter(),
            //   child: Container(
            //     height: 0,
            //     width: MediaQuery.of(context).size.width,
            //     decoration: const BoxDecoration(
            //       gradient: LinearGradient(colors: [
            //         AppColors.primaryGradientLight,
            //         AppColors.primaryGradientDeep
            //       ]),
            //     ),
            //   ),
            // ),
            TweenAnimationBuilder<Offset>(
              duration: const Duration(milliseconds: 1200),
              curve: Curves.linear,
              tween: Tween<Offset>(
                  begin: const Offset(500, 0), end: const Offset(110, 72)),
              child: Image.asset('assets/auth/images/cartoon.png'),
              builder: (context, offset, child) {
                return Transform.translate(offset: offset, child: child);
              },
            ),
            TweenAnimationBuilder<Offset>(
              duration: const Duration(milliseconds: 1200),
              curve: Curves.linear,
              tween: Tween<Offset>(
                  begin: const Offset(-100, 0), end: const Offset(5, 72)),
              child: Image.asset('assets/auth/images/burger.png'),
              builder: (context, offset, child) {
                return Transform.translate(offset: offset, child: child);
              },
            ),
            TweenAnimationBuilder<Offset>(
              duration: const Duration(milliseconds: 1200),
              curve: Curves.linear,
              tween: Tween<Offset>(
                  begin: const Offset(-20, 548), end: const Offset(0, 348)),
              child: Image.asset('assets/auth/images/fries.png'),
              builder: (context, offset, child) {
                return Transform.translate(offset: offset, child: child);
              },
            ),
            TweenAnimationBuilder<Offset>(
              duration: const Duration(milliseconds: 1200),
              curve: Curves.linear,
              tween: Tween<Offset>(
                  begin: const Offset(500, 650), end: const Offset(210, 450)),
              child: Image.asset('assets/auth/images/donut.png'),
              builder: (context, offset, child) {
                return Transform.translate(offset: offset, child: child);
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 70),
                child: Text('get_ready_to_explore'.tr(),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

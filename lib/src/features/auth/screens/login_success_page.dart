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
        return const MenuHome(type: 'loggedIn');
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Stack(
          children: [
            TweenAnimationBuilder<Offset>(
              duration: const Duration(milliseconds: 1200),
              curve: Curves.linear,
              tween: Tween<Offset>(
                  begin: const Offset(500, 0), end: Offset(w - 310, 72)),
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
                  begin: const Offset(-20, 548), end: Offset(0, h - 548)),
              child: Image.asset('assets/auth/images/fries.png'),
              builder: (context, offset, child) {
                return Transform.translate(offset: offset, child: child);
              },
            ),
            TweenAnimationBuilder<Offset>(
              duration: const Duration(milliseconds: 1200),
              curve: Curves.linear,
              tween: Tween<Offset>(
                  begin: const Offset(500, 650), end: Offset(w - 210, h - 450)),
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

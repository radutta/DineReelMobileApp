import 'dart:async';

import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../menu/screens/qr_scan_page.dart';

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
        return const QrScanPage();
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
            TweenAnimationBuilder<Offset>(
              duration: const Duration(milliseconds: 1200),
              curve: Curves.linear,
              tween: Tween<Offset>(
                  begin: const Offset(500, 0), end: const Offset(110, 72)),
              child: Image.asset('assets/images/cartoon.png'),
              builder: (context, offset, child) {
                return Transform.translate(offset: offset, child: child);
              },
            ),
            TweenAnimationBuilder<Offset>(
              duration: const Duration(milliseconds: 1200),
              curve: Curves.linear,
              tween: Tween<Offset>(
                  begin: const Offset(-100, 0), end: const Offset(5, 72)),
              child: Image.asset('assets/images/burger.png'),
              builder: (context, offset, child) {
                return Transform.translate(offset: offset, child: child);
              },
            ),
            TweenAnimationBuilder<Offset>(
              duration: const Duration(milliseconds: 1200),
              curve: Curves.linear,
              tween: Tween<Offset>(
                  begin: const Offset(-20, 548), end: const Offset(0, 348)),
              child: Image.asset('assets/images/fries.png'),
              builder: (context, offset, child) {
                return Transform.translate(offset: offset, child: child);
              },
            ),
            TweenAnimationBuilder<Offset>(
              duration: const Duration(milliseconds: 1200),
              curve: Curves.linear,
              tween: Tween<Offset>(
                  begin: const Offset(500, 650), end: const Offset(210, 450)),
              child: Image.asset('assets/images/donut.png'),
              builder: (context, offset, child) {
                return Transform.translate(offset: offset, child: child);
              },
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 70),
                child: Text('Get Ready To Explore\nFood with Reels',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 28,
                        color: AppColors.black,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

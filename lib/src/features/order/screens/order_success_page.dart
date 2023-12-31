import 'dart:async';

import 'package:dinereel/src/features/menu/screens/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../routing/routing_function.dart';

import '../cubit/order_cubit.dart';

class OrderSuccessPage extends StatefulWidget {
  const OrderSuccessPage({super.key});

  @override
  State<OrderSuccessPage> createState() => _OrderSuccessPageState();
}

class _OrderSuccessPageState extends State<OrderSuccessPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      context.read<OrderControllerCubit>().removeOrder();
      Navigator.of(context)
          .pushReplacement(Routes().createRoute(const MenuHome()));
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset('assets/order/lottie_asset/order_success.json',
                repeat: false, height: 300, fit: BoxFit.cover),
            Text(
              'Thanks! We have recieved your order.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
      ),
    );
  }
}

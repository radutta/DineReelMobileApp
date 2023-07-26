import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OrderSuccessPage extends StatelessWidget {
  const OrderSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset('assets/order/lottie_asset/order_success.json'),
        ],
      ),
    );
  }
}

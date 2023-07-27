import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../themes/colors.dart';
import '../../order/cubit/order_cubit.dart';

class AniamatedAddButton extends StatefulWidget {
  const AniamatedAddButton({super.key});

  @override
  State<AniamatedAddButton> createState() => _AniamatedAddButtonState();
}

class _AniamatedAddButtonState extends State<AniamatedAddButton>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation fabAnimation;
  late Animation<Offset> moveAnimation;
  int itemCount = 1;
  AlignmentGeometry alignment = Alignment.center;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    fabAnimation = Tween(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeIn));
    moveAnimation = Tween(begin: const Offset(0, -20), end: const Offset(0, 0))
        .animate(CurvedAnimation(parent: controller, curve: Curves.linear));
    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (itemCount > 1) {
          setState(() {
            itemCount = itemCount - 1;
          });
          controller.reset();
          controller.forward();
        } else if (itemCount == 0) {
          context.read<OrderControllerCubit>().removeOrder();
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6.5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(colors: [
              AppColors.primaryGradientDeep,
              AppColors.primaryGradientLight
            ]),
            color: AppColors.primaryGradientLight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              GestureDetector(
                  onTap: () {
                    if (itemCount > 1) {
                      controller.reset();
                      controller.forward();
                      setState(() {
                        itemCount = itemCount - 1;
                      });
                    } else if (itemCount == 1) {
                      context.read<OrderControllerCubit>().removeOrder();
                    }
                  },
                  child: const Icon(Icons.remove)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: AnimatedBuilder(
                  animation: controller,
                  builder: (context, child) {
                    return Opacity(
                      opacity: fabAnimation.value,
                      child: Transform.translate(
                        offset: moveAnimation.value,
                        child: Text(itemCount.toString(),
                            style: Theme.of(context).textTheme.displaySmall),
                      ),
                    );
                  },
                  child: Opacity(
                    opacity: fabAnimation.value,
                    child: Transform.translate(
                      offset: moveAnimation.value,
                      child: Text(itemCount.toString(),
                          style: Theme.of(context).textTheme.displaySmall),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    controller.reset();
                    controller.forward();
                    setState(() {
                      itemCount = itemCount + 1;
                    });
                  },
                  child: const Icon(Icons.add))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:dinereel/src/features/menu/models/menu_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../themes/colors.dart';
import '../../order/cubit/order_cubit.dart';

class AniamatedAddButton extends StatefulWidget {
  const AniamatedAddButton({super.key, required this.index});

  final int index;
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
        if (menuItems[widget.index].count > 1) {
          setState(() {
            menuItems[widget.index].count = menuItems[widget.index].count - 1;
          });
          controller.reset();
          controller.forward();
        } else if (menuItems[widget.index].count == 0) {
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
                    if (menuItems[widget.index].count > 1) {
                      setState(() {
                        menuItems[widget.index].count =
                            menuItems[widget.index].count - 1;
                      });
                      controller.reset();
                      controller.forward();
                    } else if (menuItems[widget.index].count == 0) {
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
                        child: Text(menuItems[widget.index].count.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(fontSize: 12.sp)),
                      ),
                    );
                  },
                ),
              ),
              GestureDetector(
                  onTap: () {
                    controller.reset();
                    controller.forward();
                    setState(() {
                      menuItems[widget.index].count =
                          menuItems[widget.index].count + 1;
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

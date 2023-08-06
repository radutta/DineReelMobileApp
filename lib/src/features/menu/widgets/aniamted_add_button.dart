import 'package:dinereel/data/models/menu_model.dart';
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
    with TickerProviderStateMixin {
  late AnimationController pluscontroller;
  late AnimationController minuscontroller;
  late Animation fabplusAnimation;
  late Animation fabminusAnimation;

  late Animation<Offset> moveplusAnimation;
  late Animation<Offset> moveMinusAnimation;
  int itemCount = 1;
  AlignmentGeometry alignment = Alignment.center;
  bool changeControllertominus = false;
  @override
  void initState() {
    super.initState();
    pluscontroller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    minuscontroller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    fabplusAnimation = Tween(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: pluscontroller, curve: Curves.easeIn));
    fabminusAnimation = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: minuscontroller, curve: Curves.easeIn));
    moveMinusAnimation =
        Tween(begin: const Offset(0, -20), end: const Offset(0, 0)).animate(
            CurvedAnimation(parent: minuscontroller, curve: Curves.linear));
    moveplusAnimation = Tween(
            begin: const Offset(0, 20), end: const Offset(0, 0))
        .animate(CurvedAnimation(parent: pluscontroller, curve: Curves.linear));
    minuscontroller.forward();
    pluscontroller.forward();
  }

  @override
  void dispose() {
    pluscontroller.dispose();
    minuscontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (menuItems[widget.index].count > 1) {
          setState(() {
            menuItems[widget.index].count = menuItems[widget.index].count - 1;
          });
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
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () {
                    if (menuItems[widget.index].count > 1) {
                      minuscontroller.reset();
                      minuscontroller.forward();
                      setState(() {
                        menuItems[widget.index].count =
                            menuItems[widget.index].count - 1;
                        changeControllertominus = true;
                      });
                    } else if (menuItems[widget.index].count == 1) {
                      context.read<OrderControllerCubit>().removeOrder();
                    }
                  },
                  child: Icon(Icons.remove, size: 15.sp)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: changeControllertominus
                    ? AnimatedBuilder(
                        animation: minuscontroller,
                        builder: (context, child) {
                          return Opacity(
                            opacity: fabminusAnimation.value,
                            child: Transform.translate(
                              offset: moveMinusAnimation.value,
                              child: SizedBox(
                                width: 20.w,
                                height: 23.w,
                                child: Center(
                                  child: Text(
                                      menuItems[widget.index].count.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall!
                                          .copyWith(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w700)),
                                ),
                              ),
                            ),
                          );
                        },
                      )
                    : AnimatedBuilder(
                        animation: pluscontroller,
                        builder: (context, child) {
                          return Opacity(
                            opacity: fabplusAnimation.value,
                            child: Transform.translate(
                              offset: moveplusAnimation.value,
                              child: SizedBox(
                                width: 20.w,
                                height: 23.w,
                                child: Center(
                                  child: Text(
                                      menuItems[widget.index].count.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall!
                                          .copyWith(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w700)),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
              ),
              GestureDetector(
                  onTap: () {
                    pluscontroller.reset();
                    pluscontroller.forward();
                    setState(() {
                      menuItems[widget.index].count =
                          menuItems[widget.index].count + 1;
                      changeControllertominus = false;
                    });
                  },
                  child: Icon(Icons.add, size: 15.sp))
            ],
          ),
        ),
      ),
    );
  }
}

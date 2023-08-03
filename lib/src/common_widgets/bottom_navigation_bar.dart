import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../cubit/cubit/navigationcontroller_cubit.dart';
import '../themes/colors.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key, this.type});
  final String? type;
  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          const SizedBox(width: 10),
          GestureDetector(
              onTap: () {
                context.read<NavigationcontrollerCubit>().changescreen(0);
              },
              child: SizedBox(
                width: 60,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  context.watch<NavigationcontrollerCubit>().state == 0
                      ? SvgPicture.asset('assets/auth/images/home_active.svg')
                      : SvgPicture.asset('assets/auth/images/home.svg'),
                  Text(
                    'Home',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color:
                              context.read<NavigationcontrollerCubit>().state ==
                                      0
                                  ? AppColors.primaryGradientDeep
                                  : AppColors.black,
                        ),
                  )
                ]),
              )),
          const Spacer(),
          GestureDetector(
              onTap: () {
                context.read<NavigationcontrollerCubit>().changescreen(1);
              },
              child: SizedBox(
                width: 60,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  context.watch<NavigationcontrollerCubit>().state == 1
                      ? SvgPicture.asset('assets/auth/images/blog_active.svg')
                      : SvgPicture.asset('assets/auth/images/blog.svg'),
                  Text(
                    'Blog',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color:
                              context.read<NavigationcontrollerCubit>().state ==
                                      1
                                  ? AppColors.primaryGradientDeep
                                  : AppColors.black,
                        ),
                  )
                ]),
              )),
          SizedBox(width: width > 450.0 ? 300 : 100),
          GestureDetector(
              onTap: () {
                context.read<NavigationcontrollerCubit>().changescreen(2);
              },
              child: SizedBox(
                width: 60,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  const SizedBox(height: 5),
                  context.watch<NavigationcontrollerCubit>().state == 2
                      ? SvgPicture.asset(
                          'assets/menu/images/wishlist_active.svg',
                          height: 30,
                          width: 30,
                          fit: BoxFit.contain,
                        )
                      : SvgPicture.asset(
                          'assets/menu/images/wishlist.svg',
                          height: 30,
                          width: 30,
                          fit: BoxFit.contain,
                        ),
                  Text(
                    'Wishlist',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color:
                              context.read<NavigationcontrollerCubit>().state ==
                                      2
                                  ? AppColors.primaryGradientDeep
                                  : AppColors.black,
                        ),
                  )
                ]),
              )),
          const Spacer(),
          GestureDetector(
              onTap: () {
                context.read<NavigationcontrollerCubit>().changescreen(3);
              },
              child: SizedBox(
                width: 60,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  context.watch<NavigationcontrollerCubit>().state == 3
                      ? SvgPicture.asset(
                          'assets/menu/images/user_active.svg',
                        )
                      : SvgPicture.asset('assets/menu/images/user.svg'),
                  Text(
                    widget.type == 'loggedIn'
                        ? "Profile"
                        : widget.type == 'admin'
                            ? 'Admin'
                            : "Guest",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color:
                              context.read<NavigationcontrollerCubit>().state ==
                                      3
                                  ? AppColors.primaryGradientDeep
                                  : AppColors.black,
                        ),
                  )
                ]),
              )),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 60),
        GestureDetector(
            onTap: () {
              context.read<NavigationcontrollerCubit>().changescreen(0);
            },
            child: SizedBox(
              width: 60,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                context.watch<NavigationcontrollerCubit>().state == 0
                    ? SvgPicture.asset('assets/auth/images/home_active.svg')
                    : SvgPicture.asset('assets/auth/images/home.svg'),
                Text(
                  'Home',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w700,
                        color:
                            context.read<NavigationcontrollerCubit>().state == 0
                                ? AppColors.primaryGradientDeep
                                : AppColors.black,
                      ),
                )
              ]),
            )),
        const Spacer(),
        GestureDetector(
            onTap: () {
              context.read<NavigationcontrollerCubit>().changescreen(1);
            },
            child: SizedBox(
              width: 60,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                context.watch<NavigationcontrollerCubit>().state == 1
                    ? SvgPicture.asset('assets/auth/images/blog_active.svg')
                    : SvgPicture.asset('assets/auth/images/blog.svg'),
                Text(
                  'Blog',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w700,
                        color:
                            context.read<NavigationcontrollerCubit>().state == 1
                                ? AppColors.primaryGradientDeep
                                : AppColors.black,
                      ),
                )
              ]),
            )),
        const SizedBox(width: 60),
      ],
    );
  }
}

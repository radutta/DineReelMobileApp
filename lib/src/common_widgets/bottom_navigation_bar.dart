import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../cubit/cubit/navigationcontroller_cubit.dart';
import '../themes/colors.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
                          color:
                              context.read<NavigationcontrollerCubit>().state ==
                                      1
                                  ? AppColors.primaryGradientDeep
                                  : AppColors.black,
                        ),
                  )
                ]),
              )),
          const SizedBox(width: 100),
          GestureDetector(
              onTap: () {
                context.read<NavigationcontrollerCubit>().changescreen(2);
              },
              child: SizedBox(
                width: 60,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  context.watch<NavigationcontrollerCubit>().state == 2
                      ? SvgPicture.asset(
                          'assets/menu/images/wishlist_active.svg')
                      : SvgPicture.asset('assets/menu/images/wishlist.svg'),
                  Text(
                    'Wishlist',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w700,
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
                      ? SvgPicture.asset('assets/menu/images/user_active.svg')
                      : SvgPicture.asset('assets/menu/images/user.svg'),
                  Text(
                    'Admin',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w700,
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

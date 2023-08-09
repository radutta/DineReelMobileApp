import 'package:dinereel/src/common_widgets/category_filter.dart';
import 'package:dinereel/data/models/menu_model.dart';
import 'package:dinereel/src/features/menu/screens/qr_scan_page.dart';
import 'package:dinereel/src/features/menu/screens/search_page.dart';
import 'package:dinereel/src/features/menu/screens/wishlist_page.dart';
import 'package:dinereel/src/features/menu/widgets/category_filter_bottomsheet.dart';
import 'package:dinereel/src/features/order/cubit/order_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../common_widgets/bottom_navigation_bar.dart';
import '../../../cubit/cubit/navigationcontroller_cubit.dart';
import '../../../routing/routing_function.dart';
import '../../../themes/colors.dart';
import '../../order/widgets/view_order_widget.dart';
import '../../user/screens/user_profile_page.dart';
import '../widgets/banner_widget.dart';
import '../widgets/highlightlist_widget.dart';
import '../widgets/menu_card.dart';
import '../widgets/primary_appbar.dart';

class MenuHome extends StatefulWidget {
  const MenuHome({super.key, this.type});
  final String? type;
  @override
  State<MenuHome> createState() => _MenuHomeState();
}

class _MenuHomeState extends State<MenuHome>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  var w = 450;

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      MenuPage(type: widget.type),
      const BlogPage(),
      const WishlistPage(),
      UserProfilePage(type: widget.type)
    ];
    return WillPopScope(
      onWillPop: () async {
        if (context.read<NavigationcontrollerCubit>().state != 0) {
          setState(() {
            context.read<NavigationcontrollerCubit>().changescreen(0);
          });
          return false;
        }
        return true;
      },
      child: Scaffold(
        body: Stack(
          children: [
            screens[context.watch<NavigationcontrollerCubit>().state],
            context.watch<OrderControllerCubit>().state
                ? const Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: ViewOrderWidget(orderNo: '2'))
                : Container(),
            context.watch<OrderControllerCubit>().state
                ? Positioned(
                    left: (MediaQuery.of(context).size.width - 80) / 2,
                    bottom: 66,
                    child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25.0),
                                ),
                              ),
                              context: context,
                              builder: (context) {
                                return const CategoryBottomSheet();
                              });
                        },
                        child: Image.asset('assets/menu/images/menu.png')),
                  )
                : Container(),
          ],
        ),
        extendBody: true,
        floatingActionButton: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25.0),
                    ),
                  ),
                  context: context,
                  builder: (context) {
                    return const CategoryBottomSheet();
                  });
            },
            child: Image.asset('assets/menu/images/menu.png')),
        floatingActionButtonLocation:
            context.watch<OrderControllerCubit>().state
                ? FloatingActionButtonLocation.miniCenterFloat
                : FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: context.watch<OrderControllerCubit>().state
            ? Container()
            : BottomAppBar(
                padding: const EdgeInsets.symmetric(vertical: 10),
                shape: const CircularNotchedRectangle(),
                notchMargin: 10,
                child: BottomNavigationBarWidget(type: widget.type)),
      ),
    );
  }
}

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Blog Page'),
    );
  }
}

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            AppColors.primaryGradientDeep,
            AppColors.secondaryLightColor
          ])),
      child: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [Text('Admin Screen')],
        ),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key, this.type});
  final String? type;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: context.watch<OrderControllerCubit>().state
                ? 60
                : width > 450
                    ? 90.w
                    : 124.w,
            backgroundColor: AppColors.white,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              stretchModes: const [
                StretchMode.fadeTitle,
                StretchMode.blurBackground
              ],
              background: Stack(fit: StackFit.expand, children: [
                context.watch<OrderControllerCubit>().state
                    ? Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Row(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(Icons.arrow_back)),
                            const SizedBox(width: 10),
                            Text(
                              'dinereel_foodhub'.tr(),
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const Spacer(),
                            GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                      Routes().createRoute(const QrScanPage()));
                                },
                                child: const Icon(Icons.fullscreen, size: 30)),
                            GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                      Routes().createRoute(const SearchPage()));
                                },
                                child: SvgPicture.asset(
                                  'assets/auth/images/search.svg',
                                  height: 30,
                                )),
                            GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(Routes()
                                      .createRoute(const WishlistPage()));
                                },
                                child: SvgPicture.asset(
                                  'assets/menu/images/Heart.svg',
                                  height: 30,
                                )),
                            GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(Routes()
                                      .createRoute(const UserProfilePage()));
                                },
                                child: SvgPicture.asset(
                                  'assets/menu/images/user.svg',
                                  height: 30,
                                ))
                          ],
                        ),
                      )
                    : PrimaryAppBar(type: type)
              ]),
            ),
          ),
          SliverPersistentHeader(pinned: true, delegate: HeaderSliver()),
          context.watch<OrderControllerCubit>().state
              ? const SliverToBoxAdapter(
                  child: Center(
                      child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: CategoryFilterWidget(),
                )))
              : const SliverToBoxAdapter(),
          const SliverToBoxAdapter(child: BannerWidget()),
          SliverToBoxAdapter(
              child: Padding(
                  padding: const EdgeInsets.only(
                      left: 14, right: 14, top: 20, bottom: 20),
                  child: Text('recommended'.tr(),
                      style: Theme.of(context).textTheme.titleMedium))),
          SliverList.builder(
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: MenuCardWidget(
                    index: index,
                    data: menuItems,
                  ),
                );
              }),
          const SliverToBoxAdapter(child: SizedBox(height: 100))
        ],
      ),
    );
  }
}

const _maxHeaderExtend = 80.0;

class HeaderSliver extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    var percent = shrinkOffset / _maxHeaderExtend;
    var width = MediaQuery.of(context).size.width;
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: 1,
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: percent > .1 ? 80 : 100,
                color: AppColors.white,
                child: percent > 0.1
                    ? Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 10.w,
                                right: 10.w,
                                top: width > 450 ? 20.h : 33.h),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Icon(Icons.arrow_back,
                                      color: AppColors.black),
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  'Dinereel Food hub',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                const Spacer(),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(Routes()
                                          .createRoute(const QrScanPage()));
                                    },
                                    child:
                                        const Icon(Icons.fullscreen, size: 30)),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(Routes()
                                        .createRoute(const SearchPage()));
                                  },
                                  child: SvgPicture.asset(
                                    'assets/auth/images/search.svg',
                                    height: 35,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Spacer(),
                          const Divider(
                              thickness: 1, height: 0, color: AppColors.grey)
                        ],
                      )
                    : const Padding(
                        padding: EdgeInsets.only(top: 33),
                        child: HighlightListWidget(),
                      ),
              ))
        ],
      ),
    );
  }

  @override
  double get maxExtent => _maxHeaderExtend;

  @override
  double get minExtent => _maxHeaderExtend;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}

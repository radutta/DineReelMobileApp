import 'package:dinereel/src/features/menu/widgets/category_filter_bottomsheet.dart';
import 'package:dinereel/src/features/order/cubit/order_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../common_widgets/bottom_navigation_bar.dart';
import '../../../cubit/cubit/navigationcontroller_cubit.dart';
import '../../../themes/colors.dart';
import '../../order/widgets/view_order_widget.dart';
import '../../user/screens/user_profile_page.dart';
import '../widgets/banner_widget.dart';
import '../widgets/highlightlist_widget.dart';
import '../widgets/menu_card.dart';
import '../widgets/primary_appbar.dart';

class MenuHome extends StatefulWidget {
  const MenuHome({super.key});

  @override
  State<MenuHome> createState() => _MenuHomeState();
}

class _MenuHomeState extends State<MenuHome>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  List<Widget> screens = [
    const MenuPage(),
    const BlogPage(),
    const WishlistPage(),
    const UserProfilePage()
  ];

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this,
        reverseDuration: const Duration(milliseconds: 800),
        duration: const Duration(milliseconds: 800),
        animationBehavior: AnimationBehavior.preserve);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                    bottom: 82, child: ViewOrderWidget(orderNo: '2'))
                : Container()
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
                  transitionAnimationController: controller,
                  context: context,
                  builder: (context) {
                    return const CategoryBottomSheet();
                  });
            },
            child: Image.asset('assets/menu/images/menu.png')),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const BottomAppBar(
            padding: EdgeInsets.symmetric(vertical: 10),
            shape: CircularNotchedRectangle(),
            notchMargin: 10,
            child: BottomNavigationBarWidget()),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PrimaryAppBar(),
            const SizedBox(height: 20),
            const HighlightListWidget(),
            const SizedBox(height: 18),
            const BannerWidget(),
            Padding(
              padding: const EdgeInsets.only(
                  left: 14, right: 14, top: 20, bottom: 20),
              child: Text(
                'recommended'.tr(),
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 100),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return MenuCardWidget(index: index);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

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
          children: [Text('Wishlist Screen')],
        ),
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

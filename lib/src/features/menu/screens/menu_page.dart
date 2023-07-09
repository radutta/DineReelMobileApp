import 'package:dinereel/src/features/menu/widgets/category_filter_bottomsheet.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common_widgets/bottom_navigation_bar.dart';
import '../../../cubit/cubit/navigationcontroller_cubit.dart';
import '../../../themes/colors.dart';
// import '../../auth/screens/home_page.dart';
import '../widgets/banner_widget.dart';
import '../widgets/highlightlist_widget.dart';
import '../widgets/menu_card.dart';
import '../widgets/primary_appbar.dart';

class MenuHome extends StatefulWidget {
  const MenuHome({super.key});

  @override
  State<MenuHome> createState() => _MenuHomeState();
}

class _MenuHomeState extends State<MenuHome> {
  List<Widget> screens = [
    const MenuPage(),
    const BlogPage(),
    const WishlistPage(),
    const AdminPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[context.watch<NavigationcontrollerCubit>().state],
      extendBody: true,
      floatingActionButton: GestureDetector(
          onTap: () {
            showModalBottomSheet(
                isScrollControlled: true,
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomAppBar(
          padding: EdgeInsets.symmetric(vertical: 10),
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: BottomNavigationBarWidget()),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PrimaryAppBar(),
              const SizedBox(height: 20),
              const HighlightListWidget(),
              const SizedBox(height: 18),
              const BannerWidget(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
                child: Text(
                  'recommended'.tr(),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 33),
                        child: MenuCardWidget(
                          index: index,
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 20),
            ],
          ),
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
            AppColors.prinaryGradientDeep,
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
            AppColors.prinaryGradientDeep,
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

import 'package:dinereel/src/features/menu/screens/wishlist_page.dart';
import 'package:dinereel/src/features/menu/widgets/category_filter_bottomsheet.dart';
import 'package:dinereel/src/features/order/cubit/order_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../common_widgets/bottom_navigation_bar.dart';
import '../../../cubit/cubit/navigationcontroller_cubit.dart';
import '../../order/widgets/view_order_widget.dart';
import '../../user/screens/user_profile_page.dart';
import 'blog_page.dart';
import 'menu_home_page.dart';

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
  void initState() {
    super.initState();
  }

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

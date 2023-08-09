import 'package:dinereel/src/features/menu/cubit/add_wishlist/add_wishlist_cubit.dart';
import 'package:dinereel/src/features/menu/screens/item_detials_page.dart';
import 'package:dinereel/src/features/menu/widgets/aniamted_add_button.dart';
import 'package:dinereel/src/features/order/cubit/add_order/add_order_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../routing/routing_function.dart';
import '../../../themes/colors.dart';
import '../../order/cubit/order_cubit.dart';

import '../../../../data/models/menu_model.dart';
import 'item_details_bottom_sheet.dart';

final List<String> imagesItem = [
  'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://images.pexels.com/photos/1099680/pexels-photo-1099680.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://images.pexels.com/photos/958545/pexels-photo-958545.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://images.pexels.com/photos/699953/pexels-photo-699953.jpeg?auto=compress&cs=tinysrgb&w=600'
];

class MenuCardWidget extends StatefulWidget {
  const MenuCardWidget({super.key, required this.index, required this.data});

  final int index;
  final List<MenuModel> data;
  @override
  State<MenuCardWidget> createState() => _MenuCardWidgetState();
}

class _MenuCardWidgetState extends State<MenuCardWidget> {
  late PageController pagecontroller;
  bool iconColor = false;
  int itemCount = 1;
  AlignmentGeometry alignment = Alignment.center;

  @override
  void initState() {
    pagecontroller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pagecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.only(bottom: 25),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: PageView.builder(
                  controller: pagecontroller,
                  itemCount: widget.data[widget.index].images.length,
                  itemBuilder: (context, i) {
                    return GestureDetector(
                        onTap: () {
                          widget.index == 0
                              ? showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(25.0),
                                    ),
                                  ),
                                  context: context,
                                  builder: (context) {
                                    return const ItemDetailsBottomSheet();
                                  })
                              : Navigator.of(context)
                                  .push(Routes().createRoute(ItemDetailsPage(
                                  index: widget.index,
                                  data: widget.data,
                                )));
                        },
                        child: Image.network(
                            widget.data[widget.index].images[i],
                            fit: BoxFit.cover));
                  })),
          Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                  onTap: () {
                    if (context
                        .read<AddWishlistCubit>()
                        .state
                        .wishlist
                        .contains(widget.data[widget.index])) {
                      context
                          .read<AddWishlistCubit>()
                          .removefromWishlist(widget.data[widget.index]);
                    } else {
                      context
                          .read<AddWishlistCubit>()
                          .addtoWishlist(widget.data[widget.index]);
                    }
                  },
                  child: Padding(
                      padding: const EdgeInsets.only(right: 18, top: 22),
                      child: context
                              .watch<AddWishlistCubit>()
                              .state
                              .wishlist
                              .contains(widget.data[widget.index])
                          ? const Icon(Icons.favorite,
                              color: AppColors.activeRed)
                          : const Icon(Icons.favorite_border_outlined,
                              color: AppColors.white)))),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  margin: const EdgeInsets.only(top: 22),
                  padding: EdgeInsets.only(left: 20.w),
                  width: 70.w,
                  decoration: const BoxDecoration(
                      color: AppColors.primaryGradientDeep,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
                  child: Text("new".tr(),
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 12.sp, fontWeight: FontWeight.w700)))),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: const EdgeInsets.only(top: 22),
                  child: SmoothPageIndicator(
                      controller: pagecontroller,
                      count: imagesItem.length,
                      onDotClicked: (index) => pagecontroller.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut),
                      effect: const ScrollingDotsEffect(
                          dotHeight: 10,
                          dotWidth: 10,
                          spacing: 5,
                          dotColor: Colors.grey,
                          activeDotScale: 1,
                          activeStrokeWidth: 1.7,
                          activeDotColor: AppColors.primaryGradientDeep)))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      color: AppColors.black.withOpacity(.4)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(widget.data[widget.index].productname,
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                        color: AppColors.white,
                                        fontSize: 14.sp)),
                            Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border:
                                        Border.all(color: AppColors.activeRed)),
                                child: const Center(
                                    child: Icon(Icons.fiber_manual_record,
                                        color: AppColors.activeRed, size: 18))),
                          ]),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text('₹ ${widget.data[widget.index].price}',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      color: AppColors.white, fontSize: 20.sp)),
                          const Spacer(),
                          context.watch<OrderControllerCubit>().state &&
                                  menuItems[widget.index].count != 0
                              ? AniamatedAddButton(index: widget.index)
                              : GestureDetector(
                                  onTap: () {
                                    context
                                        .read<OrderControllerCubit>()
                                        .showOrder();
                                    setState(() {
                                      widget.data[widget.index].count = 1;
                                    });
                                    context
                                        .read<AddOrderCubit>()
                                        .placeOrder(widget.data[widget.index]);
                                  },
                                  child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6.5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          gradient: const LinearGradient(
                                              colors: [
                                                AppColors.primaryGradientDeep,
                                                AppColors.primaryGradientLight
                                              ]),
                                          color:
                                              AppColors.primaryGradientLight),
                                      child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 48),
                                          child: Text('add'.tr(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium!
                                                  .copyWith(fontSize: 15.sp)))))
                        ],
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}

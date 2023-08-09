import 'package:dinereel/src/features/menu/widgets/menu_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../data/models/menu_model.dart';
import '../../../themes/colors.dart';
import '../cubit/add_wishlist/add_wishlist_cubit.dart';

class ItemPreviewSlider extends StatefulWidget {
  const ItemPreviewSlider({super.key, required this.index, required this.data});
  final int index;
  final List<MenuModel> data;
  @override
  State<ItemPreviewSlider> createState() => _ItemPreviewSliderState();
}

class _ItemPreviewSliderState extends State<ItemPreviewSlider> {
  late PageController pagecontroller;
  bool iconColor = false;

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
    return Stack(
      children: [
        Container(
          height: 300.w,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            child: PageView.builder(
                controller: pagecontroller,
                itemCount: imagesItem.length,
                itemBuilder: (context, index) {
                  return Image.network(
                    imagesItem[index],
                    fit: BoxFit.cover,
                  );
                }),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 2 - 37.5,
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: SmoothPageIndicator(
                controller: pagecontroller,
                count: imagesItem.length,
                onDotClicked: (index) => pagecontroller.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    ),
                effect: const ScrollingDotsEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    spacing: 5,
                    dotColor: Colors.grey,
                    activeDotScale: 1,
                    activeStrokeWidth: 1.7,
                    activeDotColor: AppColors.primaryGradientDeep)),
          ),
        ),
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
              padding: const EdgeInsets.only(right: 18, top: 50),
              child: context
                      .watch<AddWishlistCubit>()
                      .state
                      .wishlist
                      .contains(widget.data[widget.index])
                  ? const Icon(
                      Icons.favorite,
                      color: AppColors.activeRed,
                    )
                  : const Icon(
                      Icons.favorite_border_outlined,
                      color: AppColors.white,
                    ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 18, top: 50),
              child: Icon(
                Icons.arrow_back,
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../themes/colors.dart';
import '../cubit/add_wishlist/add_wishlist_cubit.dart';
import '../widgets/menu_card.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    var wishlist = context.watch<AddWishlistCubit>().state.wishlist;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
        elevation: 0,
        title: Text('WishList', style: Theme.of(context).textTheme.titleMedium),
      ),
      body: wishlist.isEmpty
          ? const Center(
              child: Text('Wishlist is Empty!'),
            )
          : SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: wishlist.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: MenuCardWidget(index: index, data: wishlist),
                        );
                      }),
                ],
              ),
            ),
    );
  }
}

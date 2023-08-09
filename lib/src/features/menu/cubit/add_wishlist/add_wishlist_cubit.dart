import 'package:bloc/bloc.dart';
import 'package:dinereel/data/models/menu_model.dart';
import 'package:equatable/equatable.dart';

part 'add_wishlist_state.dart';

class AddWishlistCubit extends Cubit<AddWishlistState> {
  AddWishlistCubit() : super(AddWishlistState.initial());

  addtoWishlist(MenuModel menu) {
    emit(state.copyWith(wishlist: [...state.wishlist, menu]));
  }

  removefromWishlist(MenuModel menu) {
    emit(state.copyWith(
        wishlist: state.wishlist.where((e) => e != menu).toList()));
  }
}

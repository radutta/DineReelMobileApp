// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'add_wishlist_cubit.dart';

class AddWishlistState extends Equatable {
  final List<MenuModel> wishlist;
  const AddWishlistState({required this.wishlist});

  factory AddWishlistState.initial() {
    return const AddWishlistState(wishlist: []);
  }

  @override
  List<Object> get props => [wishlist];

  AddWishlistState copyWith({
    List<MenuModel>? wishlist,
  }) {
    return AddWishlistState(
      wishlist: wishlist ?? this.wishlist,
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'add_order_cubit.dart';

class AddOrderState extends Equatable {
  final List<MenuModel> orderlist;
  const AddOrderState({
    required this.orderlist,
  });

  factory AddOrderState.initial() {
    return const AddOrderState(orderlist: []);
  }
  @override
  List<Object> get props => [orderlist];

  AddOrderState copyWith({
    List<MenuModel>? orderlist,
  }) {
    return AddOrderState(
      orderlist: orderlist ?? this.orderlist,
    );
  }
}

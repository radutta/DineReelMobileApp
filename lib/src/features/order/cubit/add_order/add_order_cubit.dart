import 'package:bloc/bloc.dart';
import 'package:dinereel/data/models/menu_model.dart';
import 'package:equatable/equatable.dart';

part 'add_order_state.dart';

class AddOrderCubit extends Cubit<AddOrderState> {
  AddOrderCubit() : super(AddOrderState.initial());

  placeOrder(MenuModel order) {
    emit(state.copyWith(orderlist: [...state.orderlist, order]));
  }

  removeOrder(MenuModel order) {
    emit(state.copyWith(
        orderlist: state.orderlist.where((e) => e != order).toList()));
  }
}

import 'package:bloc/bloc.dart';

class OrderControllerCubit extends Cubit<bool> {
  OrderControllerCubit() : super(false);

  showOrder() {
    emit(true);
  }

  removeOrder() {
    emit(false);
  }
}

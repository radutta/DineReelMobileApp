import 'package:bloc/bloc.dart';

class NavigationcontrollerCubit extends Cubit<int> {
  NavigationcontrollerCubit() : super(0);

  changescreen(int index) {
    emit(index);
  }
}

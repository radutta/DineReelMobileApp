import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'category_filter_state.dart';

class CategoryFilterCubit extends Cubit<CategoryFilterState> {
  CategoryFilterCubit() : super(CategoryFilterState.initial());

  void selectCategory(int index) {
    emit(
        state.copyWith(selecltedCategory: [...state.selecltedCategory, index]));
  }

  void removeCategory(int index) {
    emit(state.copyWith(
        selecltedCategory:
            state.selecltedCategory.where((e) => e != index).toList()));
  }

  void clearAll() {
    emit(state.copyWith(selecltedCategory: []));
  }
}

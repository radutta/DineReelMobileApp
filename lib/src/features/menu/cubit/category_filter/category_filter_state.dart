part of 'category_filter_cubit.dart';

class CategoryFilterState extends Equatable {
  final List<int> selecltedCategory;
  const CategoryFilterState({required this.selecltedCategory});

  factory CategoryFilterState.initial() {
    return const CategoryFilterState(selecltedCategory: []);
  }
  CategoryFilterState copyWith({
    List<int>? selecltedCategory,
  }) {
    return CategoryFilterState(
      selecltedCategory: selecltedCategory ?? this.selecltedCategory,
    );
  }

  @override
  List<Object> get props => [selecltedCategory];
}

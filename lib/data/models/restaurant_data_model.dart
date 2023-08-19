import 'package:dinereel/data/models/restaurant_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'outlet_model.dart';
part 'restaurant_data_model.freezed.dart';
part 'restaurant_data_model.g.dart';

@freezed
class RestaurantDataModel with _$RestaurantDataModel {
  const factory RestaurantDataModel({
    required Outlet outlet,
    required Restaurant restaurant,
  }) = _RestaurantDataModel;

  factory RestaurantDataModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantDataModelFromJson(json);
}

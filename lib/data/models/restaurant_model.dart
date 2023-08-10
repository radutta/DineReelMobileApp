// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'restaurant_model.freezed.dart';
part 'restaurant_model.g.dart';

@freezed
class Restaurant with _$Restaurant {
  const factory Restaurant({
    required Logo logo,
    @JsonKey(name: '_id') required String id,
    required String name,
    @Default([]) List<String> category,
  }) = _Restaurant;
  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);
}

@freezed
class Logo with _$Logo {
  const factory Logo({
    @JsonKey(name: 'logo_id') required String logoId,
    @JsonKey(name: 'logo_url') required String logoUrl,
  }) = _Logo;
  factory Logo.fromJson(Map<String, dynamic> json) => _$LogoFromJson(json);
}

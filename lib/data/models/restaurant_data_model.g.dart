// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RestaurantDataModel _$$_RestaurantDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_RestaurantDataModel(
      outlet: Outlet.fromJson(json['outlet'] as Map<String, dynamic>),
      restaurant:
          Restaurant.fromJson(json['restaurant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RestaurantDataModelToJson(
        _$_RestaurantDataModel instance) =>
    <String, dynamic>{
      'outlet': instance.outlet,
      'restaurant': instance.restaurant,
    };

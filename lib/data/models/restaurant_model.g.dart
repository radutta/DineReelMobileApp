// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Restaurant _$$_RestaurantFromJson(Map<String, dynamic> json) =>
    _$_Restaurant(
      logo: Logo.fromJson(json['logo'] as Map<String, dynamic>),
      id: json['_id'] as String,
      name: json['name'] as String,
      category: (json['category'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_RestaurantToJson(_$_Restaurant instance) =>
    <String, dynamic>{
      'logo': instance.logo,
      '_id': instance.id,
      'name': instance.name,
      'category': instance.category,
    };

_$_Logo _$$_LogoFromJson(Map<String, dynamic> json) => _$_Logo(
      logoId: json['logo_id'] as String,
      logoUrl: json['logo_url'] as String,
    );

Map<String, dynamic> _$$_LogoToJson(_$_Logo instance) => <String, dynamic>{
      'logo_id': instance.logoId,
      'logo_url': instance.logoUrl,
    };

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantDataModel _$RestaurantDataModelFromJson(Map<String, dynamic> json) {
  return _RestaurantDataModel.fromJson(json);
}

/// @nodoc
mixin _$RestaurantDataModel {
  Outlet get outlet => throw _privateConstructorUsedError;
  Restaurant get restaurant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantDataModelCopyWith<RestaurantDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantDataModelCopyWith<$Res> {
  factory $RestaurantDataModelCopyWith(
          RestaurantDataModel value, $Res Function(RestaurantDataModel) then) =
      _$RestaurantDataModelCopyWithImpl<$Res, RestaurantDataModel>;
  @useResult
  $Res call({Outlet outlet, Restaurant restaurant});

  $OutletCopyWith<$Res> get outlet;
  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class _$RestaurantDataModelCopyWithImpl<$Res, $Val extends RestaurantDataModel>
    implements $RestaurantDataModelCopyWith<$Res> {
  _$RestaurantDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outlet = null,
    Object? restaurant = null,
  }) {
    return _then(_value.copyWith(
      outlet: null == outlet
          ? _value.outlet
          : outlet // ignore: cast_nullable_to_non_nullable
              as Outlet,
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OutletCopyWith<$Res> get outlet {
    return $OutletCopyWith<$Res>(_value.outlet, (value) {
      return _then(_value.copyWith(outlet: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RestaurantCopyWith<$Res> get restaurant {
    return $RestaurantCopyWith<$Res>(_value.restaurant, (value) {
      return _then(_value.copyWith(restaurant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RestaurantDataModelCopyWith<$Res>
    implements $RestaurantDataModelCopyWith<$Res> {
  factory _$$_RestaurantDataModelCopyWith(_$_RestaurantDataModel value,
          $Res Function(_$_RestaurantDataModel) then) =
      __$$_RestaurantDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Outlet outlet, Restaurant restaurant});

  @override
  $OutletCopyWith<$Res> get outlet;
  @override
  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class __$$_RestaurantDataModelCopyWithImpl<$Res>
    extends _$RestaurantDataModelCopyWithImpl<$Res, _$_RestaurantDataModel>
    implements _$$_RestaurantDataModelCopyWith<$Res> {
  __$$_RestaurantDataModelCopyWithImpl(_$_RestaurantDataModel _value,
      $Res Function(_$_RestaurantDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outlet = null,
    Object? restaurant = null,
  }) {
    return _then(_$_RestaurantDataModel(
      outlet: null == outlet
          ? _value.outlet
          : outlet // ignore: cast_nullable_to_non_nullable
              as Outlet,
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RestaurantDataModel implements _RestaurantDataModel {
  const _$_RestaurantDataModel(
      {required this.outlet, required this.restaurant});

  factory _$_RestaurantDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantDataModelFromJson(json);

  @override
  final Outlet outlet;
  @override
  final Restaurant restaurant;

  @override
  String toString() {
    return 'RestaurantDataModel(outlet: $outlet, restaurant: $restaurant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestaurantDataModel &&
            (identical(other.outlet, outlet) || other.outlet == outlet) &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, outlet, restaurant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantDataModelCopyWith<_$_RestaurantDataModel> get copyWith =>
      __$$_RestaurantDataModelCopyWithImpl<_$_RestaurantDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantDataModelToJson(
      this,
    );
  }
}

abstract class _RestaurantDataModel implements RestaurantDataModel {
  const factory _RestaurantDataModel(
      {required final Outlet outlet,
      required final Restaurant restaurant}) = _$_RestaurantDataModel;

  factory _RestaurantDataModel.fromJson(Map<String, dynamic> json) =
      _$_RestaurantDataModel.fromJson;

  @override
  Outlet get outlet;
  @override
  Restaurant get restaurant;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantDataModelCopyWith<_$_RestaurantDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

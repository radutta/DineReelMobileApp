// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) {
  return _Restaurant.fromJson(json);
}

/// @nodoc
mixin _$Restaurant {
  Logo get logo => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantCopyWith<Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantCopyWith<$Res> {
  factory $RestaurantCopyWith(
          Restaurant value, $Res Function(Restaurant) then) =
      _$RestaurantCopyWithImpl<$Res, Restaurant>;
  @useResult
  $Res call(
      {Logo logo,
      @JsonKey(name: '_id') String id,
      String name,
      List<String> category});

  $LogoCopyWith<$Res> get logo;
}

/// @nodoc
class _$RestaurantCopyWithImpl<$Res, $Val extends Restaurant>
    implements $RestaurantCopyWith<$Res> {
  _$RestaurantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logo = null,
    Object? id = null,
    Object? name = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as Logo,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LogoCopyWith<$Res> get logo {
    return $LogoCopyWith<$Res>(_value.logo, (value) {
      return _then(_value.copyWith(logo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RestaurantCopyWith<$Res>
    implements $RestaurantCopyWith<$Res> {
  factory _$$_RestaurantCopyWith(
          _$_Restaurant value, $Res Function(_$_Restaurant) then) =
      __$$_RestaurantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Logo logo,
      @JsonKey(name: '_id') String id,
      String name,
      List<String> category});

  @override
  $LogoCopyWith<$Res> get logo;
}

/// @nodoc
class __$$_RestaurantCopyWithImpl<$Res>
    extends _$RestaurantCopyWithImpl<$Res, _$_Restaurant>
    implements _$$_RestaurantCopyWith<$Res> {
  __$$_RestaurantCopyWithImpl(
      _$_Restaurant _value, $Res Function(_$_Restaurant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logo = null,
    Object? id = null,
    Object? name = null,
    Object? category = null,
  }) {
    return _then(_$_Restaurant(
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as Logo,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Restaurant implements _Restaurant {
  const _$_Restaurant(
      {required this.logo,
      @JsonKey(name: '_id') required this.id,
      required this.name,
      final List<String> category = const []})
      : _category = category;

  factory _$_Restaurant.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantFromJson(json);

  @override
  final Logo logo;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  final List<String> _category;
  @override
  @JsonKey()
  List<String> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  String toString() {
    return 'Restaurant(logo: $logo, id: $id, name: $name, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Restaurant &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._category, _category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, logo, id, name,
      const DeepCollectionEquality().hash(_category));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantCopyWith<_$_Restaurant> get copyWith =>
      __$$_RestaurantCopyWithImpl<_$_Restaurant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantToJson(
      this,
    );
  }
}

abstract class _Restaurant implements Restaurant {
  const factory _Restaurant(
      {required final Logo logo,
      @JsonKey(name: '_id') required final String id,
      required final String name,
      final List<String> category}) = _$_Restaurant;

  factory _Restaurant.fromJson(Map<String, dynamic> json) =
      _$_Restaurant.fromJson;

  @override
  Logo get logo;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  List<String> get category;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantCopyWith<_$_Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

Logo _$LogoFromJson(Map<String, dynamic> json) {
  return _Logo.fromJson(json);
}

/// @nodoc
mixin _$Logo {
  @JsonKey(name: 'logo_id')
  String get logoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_url')
  String get logoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogoCopyWith<Logo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoCopyWith<$Res> {
  factory $LogoCopyWith(Logo value, $Res Function(Logo) then) =
      _$LogoCopyWithImpl<$Res, Logo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'logo_id') String logoId,
      @JsonKey(name: 'logo_url') String logoUrl});
}

/// @nodoc
class _$LogoCopyWithImpl<$Res, $Val extends Logo>
    implements $LogoCopyWith<$Res> {
  _$LogoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logoId = null,
    Object? logoUrl = null,
  }) {
    return _then(_value.copyWith(
      logoId: null == logoId
          ? _value.logoId
          : logoId // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: null == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LogoCopyWith<$Res> implements $LogoCopyWith<$Res> {
  factory _$$_LogoCopyWith(_$_Logo value, $Res Function(_$_Logo) then) =
      __$$_LogoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'logo_id') String logoId,
      @JsonKey(name: 'logo_url') String logoUrl});
}

/// @nodoc
class __$$_LogoCopyWithImpl<$Res> extends _$LogoCopyWithImpl<$Res, _$_Logo>
    implements _$$_LogoCopyWith<$Res> {
  __$$_LogoCopyWithImpl(_$_Logo _value, $Res Function(_$_Logo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logoId = null,
    Object? logoUrl = null,
  }) {
    return _then(_$_Logo(
      logoId: null == logoId
          ? _value.logoId
          : logoId // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: null == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Logo implements _Logo {
  const _$_Logo(
      {@JsonKey(name: 'logo_id') required this.logoId,
      @JsonKey(name: 'logo_url') required this.logoUrl});

  factory _$_Logo.fromJson(Map<String, dynamic> json) => _$$_LogoFromJson(json);

  @override
  @JsonKey(name: 'logo_id')
  final String logoId;
  @override
  @JsonKey(name: 'logo_url')
  final String logoUrl;

  @override
  String toString() {
    return 'Logo(logoId: $logoId, logoUrl: $logoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Logo &&
            (identical(other.logoId, logoId) || other.logoId == logoId) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, logoId, logoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogoCopyWith<_$_Logo> get copyWith =>
      __$$_LogoCopyWithImpl<_$_Logo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogoToJson(
      this,
    );
  }
}

abstract class _Logo implements Logo {
  const factory _Logo(
      {@JsonKey(name: 'logo_id') required final String logoId,
      @JsonKey(name: 'logo_url') required final String logoUrl}) = _$_Logo;

  factory _Logo.fromJson(Map<String, dynamic> json) = _$_Logo.fromJson;

  @override
  @JsonKey(name: 'logo_id')
  String get logoId;
  @override
  @JsonKey(name: 'logo_url')
  String get logoUrl;
  @override
  @JsonKey(ignore: true)
  _$$_LogoCopyWith<_$_Logo> get copyWith => throw _privateConstructorUsedError;
}

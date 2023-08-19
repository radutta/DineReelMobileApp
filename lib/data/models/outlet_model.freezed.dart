// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'outlet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Outlet _$OutletFromJson(Map<String, dynamic> json) {
  return _Outlet.fromJson(json);
}

/// @nodoc
mixin _$Outlet {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'outlet_id')
  String get outletId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'tables_list')
  List<String> get tableslist => throw _privateConstructorUsedError;
  List<Highlight> get highlights => throw _privateConstructorUsedError;
  List<Offer> get offers => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_food_menu')
  String get defaultFoodMenu => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletCopyWith<Outlet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletCopyWith<$Res> {
  factory $OutletCopyWith(Outlet value, $Res Function(Outlet) then) =
      _$OutletCopyWithImpl<$Res, Outlet>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'outlet_id') String outletId,
      String name,
      String address,
      @JsonKey(name: 'tables_list') List<String> tableslist,
      List<Highlight> highlights,
      List<Offer> offers,
      @JsonKey(name: 'default_food_menu') String defaultFoodMenu,
      bool isActive});
}

/// @nodoc
class _$OutletCopyWithImpl<$Res, $Val extends Outlet>
    implements $OutletCopyWith<$Res> {
  _$OutletCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? outletId = null,
    Object? name = null,
    Object? address = null,
    Object? tableslist = null,
    Object? highlights = null,
    Object? offers = null,
    Object? defaultFoodMenu = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      outletId: null == outletId
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      tableslist: null == tableslist
          ? _value.tableslist
          : tableslist // ignore: cast_nullable_to_non_nullable
              as List<String>,
      highlights: null == highlights
          ? _value.highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<Highlight>,
      offers: null == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
      defaultFoodMenu: null == defaultFoodMenu
          ? _value.defaultFoodMenu
          : defaultFoodMenu // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OutletCopyWith<$Res> implements $OutletCopyWith<$Res> {
  factory _$$_OutletCopyWith(_$_Outlet value, $Res Function(_$_Outlet) then) =
      __$$_OutletCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'outlet_id') String outletId,
      String name,
      String address,
      @JsonKey(name: 'tables_list') List<String> tableslist,
      List<Highlight> highlights,
      List<Offer> offers,
      @JsonKey(name: 'default_food_menu') String defaultFoodMenu,
      bool isActive});
}

/// @nodoc
class __$$_OutletCopyWithImpl<$Res>
    extends _$OutletCopyWithImpl<$Res, _$_Outlet>
    implements _$$_OutletCopyWith<$Res> {
  __$$_OutletCopyWithImpl(_$_Outlet _value, $Res Function(_$_Outlet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? outletId = null,
    Object? name = null,
    Object? address = null,
    Object? tableslist = null,
    Object? highlights = null,
    Object? offers = null,
    Object? defaultFoodMenu = null,
    Object? isActive = null,
  }) {
    return _then(_$_Outlet(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      outletId: null == outletId
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      tableslist: null == tableslist
          ? _value._tableslist
          : tableslist // ignore: cast_nullable_to_non_nullable
              as List<String>,
      highlights: null == highlights
          ? _value._highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<Highlight>,
      offers: null == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
      defaultFoodMenu: null == defaultFoodMenu
          ? _value.defaultFoodMenu
          : defaultFoodMenu // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Outlet implements _Outlet {
  const _$_Outlet(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'outlet_id') required this.outletId,
      required this.name,
      required this.address,
      @JsonKey(name: 'tables_list') required final List<String> tableslist,
      required final List<Highlight> highlights,
      required final List<Offer> offers,
      @JsonKey(name: 'default_food_menu') required this.defaultFoodMenu,
      required this.isActive})
      : _tableslist = tableslist,
        _highlights = highlights,
        _offers = offers;

  factory _$_Outlet.fromJson(Map<String, dynamic> json) =>
      _$$_OutletFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'outlet_id')
  final String outletId;
  @override
  final String name;
  @override
  final String address;
  final List<String> _tableslist;
  @override
  @JsonKey(name: 'tables_list')
  List<String> get tableslist {
    if (_tableslist is EqualUnmodifiableListView) return _tableslist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tableslist);
  }

  final List<Highlight> _highlights;
  @override
  List<Highlight> get highlights {
    if (_highlights is EqualUnmodifiableListView) return _highlights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_highlights);
  }

  final List<Offer> _offers;
  @override
  List<Offer> get offers {
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offers);
  }

  @override
  @JsonKey(name: 'default_food_menu')
  final String defaultFoodMenu;
  @override
  final bool isActive;

  @override
  String toString() {
    return 'Outlet(id: $id, outletId: $outletId, name: $name, address: $address, tableslist: $tableslist, highlights: $highlights, offers: $offers, defaultFoodMenu: $defaultFoodMenu, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Outlet &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.outletId, outletId) ||
                other.outletId == outletId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other._tableslist, _tableslist) &&
            const DeepCollectionEquality()
                .equals(other._highlights, _highlights) &&
            const DeepCollectionEquality().equals(other._offers, _offers) &&
            (identical(other.defaultFoodMenu, defaultFoodMenu) ||
                other.defaultFoodMenu == defaultFoodMenu) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      outletId,
      name,
      address,
      const DeepCollectionEquality().hash(_tableslist),
      const DeepCollectionEquality().hash(_highlights),
      const DeepCollectionEquality().hash(_offers),
      defaultFoodMenu,
      isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OutletCopyWith<_$_Outlet> get copyWith =>
      __$$_OutletCopyWithImpl<_$_Outlet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OutletToJson(
      this,
    );
  }
}

abstract class _Outlet implements Outlet {
  const factory _Outlet(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(name: 'outlet_id') required final String outletId,
      required final String name,
      required final String address,
      @JsonKey(name: 'tables_list') required final List<String> tableslist,
      required final List<Highlight> highlights,
      required final List<Offer> offers,
      @JsonKey(name: 'default_food_menu') required final String defaultFoodMenu,
      required final bool isActive}) = _$_Outlet;

  factory _Outlet.fromJson(Map<String, dynamic> json) = _$_Outlet.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'outlet_id')
  String get outletId;
  @override
  String get name;
  @override
  String get address;
  @override
  @JsonKey(name: 'tables_list')
  List<String> get tableslist;
  @override
  List<Highlight> get highlights;
  @override
  List<Offer> get offers;
  @override
  @JsonKey(name: 'default_food_menu')
  String get defaultFoodMenu;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_OutletCopyWith<_$_Outlet> get copyWith =>
      throw _privateConstructorUsedError;
}

Highlight _$HighlightFromJson(Map<String, dynamic> json) {
  return _Highlight.fromJson(json);
}

/// @nodoc
mixin _$Highlight {
  @JsonKey(name: 'highlight_icon')
  HighlightIcon get highlightIcon => throw _privateConstructorUsedError;
  @JsonKey(name: 'highlight_name')
  String get highlightName => throw _privateConstructorUsedError;
  @JsonKey(name: 'highlight_type')
  List<String> get highlightType => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'highlight_media_lists')
  List<String> get highlightMediaLists => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HighlightCopyWith<Highlight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighlightCopyWith<$Res> {
  factory $HighlightCopyWith(Highlight value, $Res Function(Highlight) then) =
      _$HighlightCopyWithImpl<$Res, Highlight>;
  @useResult
  $Res call(
      {@JsonKey(name: 'highlight_icon') HighlightIcon highlightIcon,
      @JsonKey(name: 'highlight_name') String highlightName,
      @JsonKey(name: 'highlight_type') List<String> highlightType,
      @JsonKey(name: '_id') String id,
      @JsonKey(name: 'highlight_media_lists')
      List<String> highlightMediaLists});

  $HighlightIconCopyWith<$Res> get highlightIcon;
}

/// @nodoc
class _$HighlightCopyWithImpl<$Res, $Val extends Highlight>
    implements $HighlightCopyWith<$Res> {
  _$HighlightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? highlightIcon = null,
    Object? highlightName = null,
    Object? highlightType = null,
    Object? id = null,
    Object? highlightMediaLists = null,
  }) {
    return _then(_value.copyWith(
      highlightIcon: null == highlightIcon
          ? _value.highlightIcon
          : highlightIcon // ignore: cast_nullable_to_non_nullable
              as HighlightIcon,
      highlightName: null == highlightName
          ? _value.highlightName
          : highlightName // ignore: cast_nullable_to_non_nullable
              as String,
      highlightType: null == highlightType
          ? _value.highlightType
          : highlightType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      highlightMediaLists: null == highlightMediaLists
          ? _value.highlightMediaLists
          : highlightMediaLists // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HighlightIconCopyWith<$Res> get highlightIcon {
    return $HighlightIconCopyWith<$Res>(_value.highlightIcon, (value) {
      return _then(_value.copyWith(highlightIcon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HighlightCopyWith<$Res> implements $HighlightCopyWith<$Res> {
  factory _$$_HighlightCopyWith(
          _$_Highlight value, $Res Function(_$_Highlight) then) =
      __$$_HighlightCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'highlight_icon') HighlightIcon highlightIcon,
      @JsonKey(name: 'highlight_name') String highlightName,
      @JsonKey(name: 'highlight_type') List<String> highlightType,
      @JsonKey(name: '_id') String id,
      @JsonKey(name: 'highlight_media_lists')
      List<String> highlightMediaLists});

  @override
  $HighlightIconCopyWith<$Res> get highlightIcon;
}

/// @nodoc
class __$$_HighlightCopyWithImpl<$Res>
    extends _$HighlightCopyWithImpl<$Res, _$_Highlight>
    implements _$$_HighlightCopyWith<$Res> {
  __$$_HighlightCopyWithImpl(
      _$_Highlight _value, $Res Function(_$_Highlight) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? highlightIcon = null,
    Object? highlightName = null,
    Object? highlightType = null,
    Object? id = null,
    Object? highlightMediaLists = null,
  }) {
    return _then(_$_Highlight(
      highlightIcon: null == highlightIcon
          ? _value.highlightIcon
          : highlightIcon // ignore: cast_nullable_to_non_nullable
              as HighlightIcon,
      highlightName: null == highlightName
          ? _value.highlightName
          : highlightName // ignore: cast_nullable_to_non_nullable
              as String,
      highlightType: null == highlightType
          ? _value._highlightType
          : highlightType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      highlightMediaLists: null == highlightMediaLists
          ? _value._highlightMediaLists
          : highlightMediaLists // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Highlight implements _Highlight {
  const _$_Highlight(
      {@JsonKey(name: 'highlight_icon') required this.highlightIcon,
      @JsonKey(name: 'highlight_name') required this.highlightName,
      @JsonKey(name: 'highlight_type')
      required final List<String> highlightType,
      @JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'highlight_media_lists')
      required final List<String> highlightMediaLists})
      : _highlightType = highlightType,
        _highlightMediaLists = highlightMediaLists;

  factory _$_Highlight.fromJson(Map<String, dynamic> json) =>
      _$$_HighlightFromJson(json);

  @override
  @JsonKey(name: 'highlight_icon')
  final HighlightIcon highlightIcon;
  @override
  @JsonKey(name: 'highlight_name')
  final String highlightName;
  final List<String> _highlightType;
  @override
  @JsonKey(name: 'highlight_type')
  List<String> get highlightType {
    if (_highlightType is EqualUnmodifiableListView) return _highlightType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_highlightType);
  }

  @override
  @JsonKey(name: '_id')
  final String id;
  final List<String> _highlightMediaLists;
  @override
  @JsonKey(name: 'highlight_media_lists')
  List<String> get highlightMediaLists {
    if (_highlightMediaLists is EqualUnmodifiableListView)
      return _highlightMediaLists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_highlightMediaLists);
  }

  @override
  String toString() {
    return 'Highlight(highlightIcon: $highlightIcon, highlightName: $highlightName, highlightType: $highlightType, id: $id, highlightMediaLists: $highlightMediaLists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Highlight &&
            (identical(other.highlightIcon, highlightIcon) ||
                other.highlightIcon == highlightIcon) &&
            (identical(other.highlightName, highlightName) ||
                other.highlightName == highlightName) &&
            const DeepCollectionEquality()
                .equals(other._highlightType, _highlightType) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._highlightMediaLists, _highlightMediaLists));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      highlightIcon,
      highlightName,
      const DeepCollectionEquality().hash(_highlightType),
      id,
      const DeepCollectionEquality().hash(_highlightMediaLists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HighlightCopyWith<_$_Highlight> get copyWith =>
      __$$_HighlightCopyWithImpl<_$_Highlight>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HighlightToJson(
      this,
    );
  }
}

abstract class _Highlight implements Highlight {
  const factory _Highlight(
      {@JsonKey(name: 'highlight_icon')
      required final HighlightIcon highlightIcon,
      @JsonKey(name: 'highlight_name') required final String highlightName,
      @JsonKey(name: 'highlight_type')
      required final List<String> highlightType,
      @JsonKey(name: '_id') required final String id,
      @JsonKey(name: 'highlight_media_lists')
      required final List<String> highlightMediaLists}) = _$_Highlight;

  factory _Highlight.fromJson(Map<String, dynamic> json) =
      _$_Highlight.fromJson;

  @override
  @JsonKey(name: 'highlight_icon')
  HighlightIcon get highlightIcon;
  @override
  @JsonKey(name: 'highlight_name')
  String get highlightName;
  @override
  @JsonKey(name: 'highlight_type')
  List<String> get highlightType;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'highlight_media_lists')
  List<String> get highlightMediaLists;
  @override
  @JsonKey(ignore: true)
  _$$_HighlightCopyWith<_$_Highlight> get copyWith =>
      throw _privateConstructorUsedError;
}

HighlightIcon _$HighlightIconFromJson(Map<String, dynamic> json) {
  return _HighlightIcon.fromJson(json);
}

/// @nodoc
mixin _$HighlightIcon {
  @JsonKey(name: 'highlight_icon_url')
  String get highlightIconUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'highlight_icon_id')
  String get highlightIconId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HighlightIconCopyWith<HighlightIcon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighlightIconCopyWith<$Res> {
  factory $HighlightIconCopyWith(
          HighlightIcon value, $Res Function(HighlightIcon) then) =
      _$HighlightIconCopyWithImpl<$Res, HighlightIcon>;
  @useResult
  $Res call(
      {@JsonKey(name: 'highlight_icon_url') String highlightIconUrl,
      @JsonKey(name: 'highlight_icon_id') String highlightIconId});
}

/// @nodoc
class _$HighlightIconCopyWithImpl<$Res, $Val extends HighlightIcon>
    implements $HighlightIconCopyWith<$Res> {
  _$HighlightIconCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? highlightIconUrl = null,
    Object? highlightIconId = null,
  }) {
    return _then(_value.copyWith(
      highlightIconUrl: null == highlightIconUrl
          ? _value.highlightIconUrl
          : highlightIconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      highlightIconId: null == highlightIconId
          ? _value.highlightIconId
          : highlightIconId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HighlightIconCopyWith<$Res>
    implements $HighlightIconCopyWith<$Res> {
  factory _$$_HighlightIconCopyWith(
          _$_HighlightIcon value, $Res Function(_$_HighlightIcon) then) =
      __$$_HighlightIconCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'highlight_icon_url') String highlightIconUrl,
      @JsonKey(name: 'highlight_icon_id') String highlightIconId});
}

/// @nodoc
class __$$_HighlightIconCopyWithImpl<$Res>
    extends _$HighlightIconCopyWithImpl<$Res, _$_HighlightIcon>
    implements _$$_HighlightIconCopyWith<$Res> {
  __$$_HighlightIconCopyWithImpl(
      _$_HighlightIcon _value, $Res Function(_$_HighlightIcon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? highlightIconUrl = null,
    Object? highlightIconId = null,
  }) {
    return _then(_$_HighlightIcon(
      highlightIconUrl: null == highlightIconUrl
          ? _value.highlightIconUrl
          : highlightIconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      highlightIconId: null == highlightIconId
          ? _value.highlightIconId
          : highlightIconId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HighlightIcon implements _HighlightIcon {
  const _$_HighlightIcon(
      {@JsonKey(name: 'highlight_icon_url') required this.highlightIconUrl,
      @JsonKey(name: 'highlight_icon_id') required this.highlightIconId});

  factory _$_HighlightIcon.fromJson(Map<String, dynamic> json) =>
      _$$_HighlightIconFromJson(json);

  @override
  @JsonKey(name: 'highlight_icon_url')
  final String highlightIconUrl;
  @override
  @JsonKey(name: 'highlight_icon_id')
  final String highlightIconId;

  @override
  String toString() {
    return 'HighlightIcon(highlightIconUrl: $highlightIconUrl, highlightIconId: $highlightIconId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HighlightIcon &&
            (identical(other.highlightIconUrl, highlightIconUrl) ||
                other.highlightIconUrl == highlightIconUrl) &&
            (identical(other.highlightIconId, highlightIconId) ||
                other.highlightIconId == highlightIconId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, highlightIconUrl, highlightIconId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HighlightIconCopyWith<_$_HighlightIcon> get copyWith =>
      __$$_HighlightIconCopyWithImpl<_$_HighlightIcon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HighlightIconToJson(
      this,
    );
  }
}

abstract class _HighlightIcon implements HighlightIcon {
  const factory _HighlightIcon(
      {@JsonKey(name: 'highlight_icon_url')
      required final String highlightIconUrl,
      @JsonKey(name: 'highlight_icon_id')
      required final String highlightIconId}) = _$_HighlightIcon;

  factory _HighlightIcon.fromJson(Map<String, dynamic> json) =
      _$_HighlightIcon.fromJson;

  @override
  @JsonKey(name: 'highlight_icon_url')
  String get highlightIconUrl;
  @override
  @JsonKey(name: 'highlight_icon_id')
  String get highlightIconId;
  @override
  @JsonKey(ignore: true)
  _$$_HighlightIconCopyWith<_$_HighlightIcon> get copyWith =>
      throw _privateConstructorUsedError;
}

Offer _$OfferFromJson(Map<String, dynamic> json) {
  return _Offer.fromJson(json);
}

/// @nodoc
mixin _$Offer {
  @JsonKey(name: 'offer_media_id')
  String get offerMediaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'offer_media_url')
  String get offerMediaUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'offer_filter_criterion')
  String get offerfilterCriterion => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferCopyWith<Offer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferCopyWith<$Res> {
  factory $OfferCopyWith(Offer value, $Res Function(Offer) then) =
      _$OfferCopyWithImpl<$Res, Offer>;
  @useResult
  $Res call(
      {@JsonKey(name: 'offer_media_id') String offerMediaId,
      @JsonKey(name: 'offer_media_url') String offerMediaUrl,
      @JsonKey(name: 'offer_filter_criterion') String offerfilterCriterion,
      @JsonKey(name: '_id') String id});
}

/// @nodoc
class _$OfferCopyWithImpl<$Res, $Val extends Offer>
    implements $OfferCopyWith<$Res> {
  _$OfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerMediaId = null,
    Object? offerMediaUrl = null,
    Object? offerfilterCriterion = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      offerMediaId: null == offerMediaId
          ? _value.offerMediaId
          : offerMediaId // ignore: cast_nullable_to_non_nullable
              as String,
      offerMediaUrl: null == offerMediaUrl
          ? _value.offerMediaUrl
          : offerMediaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      offerfilterCriterion: null == offerfilterCriterion
          ? _value.offerfilterCriterion
          : offerfilterCriterion // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfferCopyWith<$Res> implements $OfferCopyWith<$Res> {
  factory _$$_OfferCopyWith(_$_Offer value, $Res Function(_$_Offer) then) =
      __$$_OfferCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'offer_media_id') String offerMediaId,
      @JsonKey(name: 'offer_media_url') String offerMediaUrl,
      @JsonKey(name: 'offer_filter_criterion') String offerfilterCriterion,
      @JsonKey(name: '_id') String id});
}

/// @nodoc
class __$$_OfferCopyWithImpl<$Res> extends _$OfferCopyWithImpl<$Res, _$_Offer>
    implements _$$_OfferCopyWith<$Res> {
  __$$_OfferCopyWithImpl(_$_Offer _value, $Res Function(_$_Offer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerMediaId = null,
    Object? offerMediaUrl = null,
    Object? offerfilterCriterion = null,
    Object? id = null,
  }) {
    return _then(_$_Offer(
      offerMediaId: null == offerMediaId
          ? _value.offerMediaId
          : offerMediaId // ignore: cast_nullable_to_non_nullable
              as String,
      offerMediaUrl: null == offerMediaUrl
          ? _value.offerMediaUrl
          : offerMediaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      offerfilterCriterion: null == offerfilterCriterion
          ? _value.offerfilterCriterion
          : offerfilterCriterion // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Offer implements _Offer {
  const _$_Offer(
      {@JsonKey(name: 'offer_media_id') required this.offerMediaId,
      @JsonKey(name: 'offer_media_url') required this.offerMediaUrl,
      @JsonKey(name: 'offer_filter_criterion')
      required this.offerfilterCriterion,
      @JsonKey(name: '_id') required this.id});

  factory _$_Offer.fromJson(Map<String, dynamic> json) =>
      _$$_OfferFromJson(json);

  @override
  @JsonKey(name: 'offer_media_id')
  final String offerMediaId;
  @override
  @JsonKey(name: 'offer_media_url')
  final String offerMediaUrl;
  @override
  @JsonKey(name: 'offer_filter_criterion')
  final String offerfilterCriterion;
  @override
  @JsonKey(name: '_id')
  final String id;

  @override
  String toString() {
    return 'Offer(offerMediaId: $offerMediaId, offerMediaUrl: $offerMediaUrl, offerfilterCriterion: $offerfilterCriterion, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Offer &&
            (identical(other.offerMediaId, offerMediaId) ||
                other.offerMediaId == offerMediaId) &&
            (identical(other.offerMediaUrl, offerMediaUrl) ||
                other.offerMediaUrl == offerMediaUrl) &&
            (identical(other.offerfilterCriterion, offerfilterCriterion) ||
                other.offerfilterCriterion == offerfilterCriterion) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, offerMediaId, offerMediaUrl, offerfilterCriterion, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferCopyWith<_$_Offer> get copyWith =>
      __$$_OfferCopyWithImpl<_$_Offer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferToJson(
      this,
    );
  }
}

abstract class _Offer implements Offer {
  const factory _Offer(
      {@JsonKey(name: 'offer_media_id') required final String offerMediaId,
      @JsonKey(name: 'offer_media_url') required final String offerMediaUrl,
      @JsonKey(name: 'offer_filter_criterion')
      required final String offerfilterCriterion,
      @JsonKey(name: '_id') required final String id}) = _$_Offer;

  factory _Offer.fromJson(Map<String, dynamic> json) = _$_Offer.fromJson;

  @override
  @JsonKey(name: 'offer_media_id')
  String get offerMediaId;
  @override
  @JsonKey(name: 'offer_media_url')
  String get offerMediaUrl;
  @override
  @JsonKey(name: 'offer_filter_criterion')
  String get offerfilterCriterion;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_OfferCopyWith<_$_Offer> get copyWith =>
      throw _privateConstructorUsedError;
}

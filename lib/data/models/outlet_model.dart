// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'outlet_model.freezed.dart';
part 'outlet_model.g.dart';

@freezed
class Outlet with _$Outlet {
  const factory Outlet({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'outlet_id') required String outletId,
    required String name,
    required String address,
    @JsonKey(name: 'tables_list') required List<String> tableslist,
    required List<Highlight> highlights,
    required List<Offer> offers,
    @JsonKey(name: 'default_food_menu') required String defaultFoodMenu,
    required bool isActive,
  }) = _Outlet;

  factory Outlet.fromJson(Map<String, dynamic> json) => _$OutletFromJson(json);
}

@freezed
class Highlight with _$Highlight {
  const factory Highlight({
    @JsonKey(name: 'highlight_icon') required HighlightIcon highlightIcon,
    @JsonKey(name: 'highlight_name') required String highlightName,
    @JsonKey(name: 'highlight_type') required List<String> highlightType,
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'highlight_media_lists')
    required List<String> highlightMediaLists,
    // @JsonKey(name: 'highlight_filter_criterion')
    // String? highlightFilterCriterion,
  }) = _Highlight;
  factory Highlight.fromJson(Map<String, dynamic> json) =>
      _$HighlightFromJson(json);
}

@freezed
class HighlightIcon with _$HighlightIcon {
  const factory HighlightIcon({
    @JsonKey(name: 'highlight_icon_url') required String highlightIconUrl,
    @JsonKey(name: 'highlight_icon_id') required String highlightIconId,
  }) = _HighlightIcon;
  factory HighlightIcon.fromJson(Map<String, dynamic> json) =>
      _$HighlightIconFromJson(json);
}

@freezed
class Offer with _$Offer {
  const factory Offer({
    @JsonKey(name: 'offer_media_id') required String offerMediaId,
    @JsonKey(name: 'offer_media_url') required String offerMediaUrl,
    @JsonKey(name: 'offer_filter_criterion')
    required String offerfilterCriterion,
    @JsonKey(name: '_id') required String id,
  }) = _Offer;
  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);
}

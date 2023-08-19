// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outlet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Outlet _$$_OutletFromJson(Map<String, dynamic> json) => _$_Outlet(
      id: json['_id'] as String,
      outletId: json['outlet_id'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      tableslist: (json['tables_list'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      highlights: (json['highlights'] as List<dynamic>)
          .map((e) => Highlight.fromJson(e as Map<String, dynamic>))
          .toList(),
      offers: (json['offers'] as List<dynamic>)
          .map((e) => Offer.fromJson(e as Map<String, dynamic>))
          .toList(),
      defaultFoodMenu: json['default_food_menu'] as String,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$$_OutletToJson(_$_Outlet instance) => <String, dynamic>{
      '_id': instance.id,
      'outlet_id': instance.outletId,
      'name': instance.name,
      'address': instance.address,
      'tables_list': instance.tableslist,
      'highlights': instance.highlights,
      'offers': instance.offers,
      'default_food_menu': instance.defaultFoodMenu,
      'isActive': instance.isActive,
    };

_$_Highlight _$$_HighlightFromJson(Map<String, dynamic> json) => _$_Highlight(
      highlightIcon: HighlightIcon.fromJson(
          json['highlight_icon'] as Map<String, dynamic>),
      highlightName: json['highlight_name'] as String,
      highlightType: (json['highlight_type'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      id: json['_id'] as String,
      highlightMediaLists: (json['highlight_media_lists'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_HighlightToJson(_$_Highlight instance) =>
    <String, dynamic>{
      'highlight_icon': instance.highlightIcon,
      'highlight_name': instance.highlightName,
      'highlight_type': instance.highlightType,
      '_id': instance.id,
      'highlight_media_lists': instance.highlightMediaLists,
    };

_$_HighlightIcon _$$_HighlightIconFromJson(Map<String, dynamic> json) =>
    _$_HighlightIcon(
      highlightIconUrl: json['highlight_icon_url'] as String,
      highlightIconId: json['highlight_icon_id'] as String,
    );

Map<String, dynamic> _$$_HighlightIconToJson(_$_HighlightIcon instance) =>
    <String, dynamic>{
      'highlight_icon_url': instance.highlightIconUrl,
      'highlight_icon_id': instance.highlightIconId,
    };

_$_Offer _$$_OfferFromJson(Map<String, dynamic> json) => _$_Offer(
      offerMediaId: json['offer_media_id'] as String,
      offerMediaUrl: json['offer_media_url'] as String,
      offerfilterCriterion: json['offer_filter_criterion'] as String,
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$_OfferToJson(_$_Offer instance) => <String, dynamic>{
      'offer_media_id': instance.offerMediaId,
      'offer_media_url': instance.offerMediaUrl,
      'offer_filter_criterion': instance.offerfilterCriterion,
      '_id': instance.id,
    };

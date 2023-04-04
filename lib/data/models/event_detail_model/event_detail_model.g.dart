// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_detail_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EventDetailModelCWProxy {
  EventDetailModel eventId(String? eventId);

  EventDetailModel event(EventModel? event);

  EventDetailModel eventCategory(List<EventCategoryModel>? eventCategory);

  EventDetailModel eventCategoryType(List<String>? eventCategoryType);

  EventDetailModel maxPrice(String? maxPrice);

  EventDetailModel minPrice(String? minPrice);

  EventDetailModel vendorEmail(String? vendorEmail);

  EventDetailModel vendorImageUrl(String? vendorImageUrl);

  EventDetailModel vendorName(String? vendorName);

  EventDetailModel vendorPhone(String? vendorPhone);

  EventDetailModel vendorPhoneCountrycode(String? vendorPhoneCountrycode);

  EventDetailModel vendorWebsite(String? vendorWebsite);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventDetailModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventDetailModel(...).copyWith(id: 12, name: "My name")
  /// ````
  EventDetailModel call({
    String? eventId,
    EventModel? event,
    List<EventCategoryModel>? eventCategory,
    List<String>? eventCategoryType,
    String? maxPrice,
    String? minPrice,
    String? vendorEmail,
    String? vendorImageUrl,
    String? vendorName,
    String? vendorPhone,
    String? vendorPhoneCountrycode,
    String? vendorWebsite,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEventDetailModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEventDetailModel.copyWith.fieldName(...)`
class _$EventDetailModelCWProxyImpl implements _$EventDetailModelCWProxy {
  const _$EventDetailModelCWProxyImpl(this._value);

  final EventDetailModel _value;

  @override
  EventDetailModel eventId(String? eventId) => this(eventId: eventId);

  @override
  EventDetailModel event(EventModel? event) => this(event: event);

  @override
  EventDetailModel eventCategory(List<EventCategoryModel>? eventCategory) =>
      this(eventCategory: eventCategory);

  @override
  EventDetailModel eventCategoryType(List<String>? eventCategoryType) =>
      this(eventCategoryType: eventCategoryType);

  @override
  EventDetailModel maxPrice(String? maxPrice) => this(maxPrice: maxPrice);

  @override
  EventDetailModel minPrice(String? minPrice) => this(minPrice: minPrice);

  @override
  EventDetailModel vendorEmail(String? vendorEmail) =>
      this(vendorEmail: vendorEmail);

  @override
  EventDetailModel vendorImageUrl(String? vendorImageUrl) =>
      this(vendorImageUrl: vendorImageUrl);

  @override
  EventDetailModel vendorName(String? vendorName) =>
      this(vendorName: vendorName);

  @override
  EventDetailModel vendorPhone(String? vendorPhone) =>
      this(vendorPhone: vendorPhone);

  @override
  EventDetailModel vendorPhoneCountrycode(String? vendorPhoneCountrycode) =>
      this(vendorPhoneCountrycode: vendorPhoneCountrycode);

  @override
  EventDetailModel vendorWebsite(String? vendorWebsite) =>
      this(vendorWebsite: vendorWebsite);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventDetailModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventDetailModel(...).copyWith(id: 12, name: "My name")
  /// ````
  EventDetailModel call({
    Object? eventId = const $CopyWithPlaceholder(),
    Object? event = const $CopyWithPlaceholder(),
    Object? eventCategory = const $CopyWithPlaceholder(),
    Object? eventCategoryType = const $CopyWithPlaceholder(),
    Object? maxPrice = const $CopyWithPlaceholder(),
    Object? minPrice = const $CopyWithPlaceholder(),
    Object? vendorEmail = const $CopyWithPlaceholder(),
    Object? vendorImageUrl = const $CopyWithPlaceholder(),
    Object? vendorName = const $CopyWithPlaceholder(),
    Object? vendorPhone = const $CopyWithPlaceholder(),
    Object? vendorPhoneCountrycode = const $CopyWithPlaceholder(),
    Object? vendorWebsite = const $CopyWithPlaceholder(),
  }) {
    return EventDetailModel(
      eventId: eventId == const $CopyWithPlaceholder()
          ? _value.eventId
          // ignore: cast_nullable_to_non_nullable
          : eventId as String?,
      event: event == const $CopyWithPlaceholder()
          ? _value.event
          // ignore: cast_nullable_to_non_nullable
          : event as EventModel?,
      eventCategory: eventCategory == const $CopyWithPlaceholder()
          ? _value.eventCategory
          // ignore: cast_nullable_to_non_nullable
          : eventCategory as List<EventCategoryModel>?,
      eventCategoryType: eventCategoryType == const $CopyWithPlaceholder()
          ? _value.eventCategoryType
          // ignore: cast_nullable_to_non_nullable
          : eventCategoryType as List<String>?,
      maxPrice: maxPrice == const $CopyWithPlaceholder()
          ? _value.maxPrice
          // ignore: cast_nullable_to_non_nullable
          : maxPrice as String?,
      minPrice: minPrice == const $CopyWithPlaceholder()
          ? _value.minPrice
          // ignore: cast_nullable_to_non_nullable
          : minPrice as String?,
      vendorEmail: vendorEmail == const $CopyWithPlaceholder()
          ? _value.vendorEmail
          // ignore: cast_nullable_to_non_nullable
          : vendorEmail as String?,
      vendorImageUrl: vendorImageUrl == const $CopyWithPlaceholder()
          ? _value.vendorImageUrl
          // ignore: cast_nullable_to_non_nullable
          : vendorImageUrl as String?,
      vendorName: vendorName == const $CopyWithPlaceholder()
          ? _value.vendorName
          // ignore: cast_nullable_to_non_nullable
          : vendorName as String?,
      vendorPhone: vendorPhone == const $CopyWithPlaceholder()
          ? _value.vendorPhone
          // ignore: cast_nullable_to_non_nullable
          : vendorPhone as String?,
      vendorPhoneCountrycode:
          vendorPhoneCountrycode == const $CopyWithPlaceholder()
              ? _value.vendorPhoneCountrycode
              // ignore: cast_nullable_to_non_nullable
              : vendorPhoneCountrycode as String?,
      vendorWebsite: vendorWebsite == const $CopyWithPlaceholder()
          ? _value.vendorWebsite
          // ignore: cast_nullable_to_non_nullable
          : vendorWebsite as String?,
    );
  }
}

extension $EventDetailModelCopyWith on EventDetailModel {
  /// Returns a callable class that can be used as follows: `instanceOfEventDetailModel.copyWith(...)` or like so:`instanceOfEventDetailModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EventDetailModelCWProxy get copyWith => _$EventDetailModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventDetailModel _$EventDetailModelFromJson(Map<String, dynamic> json) =>
    EventDetailModel(
      eventId: json['event_id'] as String?,
      event: EventModel.fromJson(json),
      eventCategory: (json['event_category'] as List<dynamic>?)
          ?.map((e) => EventCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      eventCategoryType: (json['event_category_type'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      maxPrice: json['max_price'] as String?,
      minPrice: json['min_price'] as String?,
      vendorEmail: json['vendor_email'] as String?,
      vendorImageUrl: json['vendor_image_url'] as String?,
      vendorName: json['vendor_name'] as String?,
      vendorPhone: json['vendor_phone'] as String?,
      vendorPhoneCountrycode: json['vendor_phone_countrycode'] as String?,
      vendorWebsite: json['vendor_website'] as String?,
    );

Map<String, dynamic> _$EventDetailModelToJson(EventDetailModel instance) =>
    <String, dynamic>{
      'event': instance.event,
      'event_id': instance.eventId,
      'vendor_name': instance.vendorName,
      'vendor_phone_countrycode': instance.vendorPhoneCountrycode,
      'vendor_phone': instance.vendorPhone,
      'vendor_email': instance.vendorEmail,
      'vendor_website': instance.vendorWebsite,
      'vendor_image_url': instance.vendorImageUrl,
      'min_price': instance.minPrice,
      'max_price': instance.maxPrice,
      'event_category_type': instance.eventCategoryType,
      'event_category': instance.eventCategory,
    };

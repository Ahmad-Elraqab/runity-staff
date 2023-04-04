// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_detail_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EventDetailEntityCWProxy {
  EventDetailEntity eventId(String? eventId);

  EventDetailEntity event(EventEntity? event);

  EventDetailEntity eventCategory(List<EventCategoryEntity>? eventCategory);

  EventDetailEntity eventCategoryType(List<String>? eventCategoryType);

  EventDetailEntity maxPrice(String? maxPrice);

  EventDetailEntity minPrice(String? minPrice);

  EventDetailEntity vendorEmail(String? vendorEmail);

  EventDetailEntity vendorImageUrl(String? vendorImageUrl);

  EventDetailEntity vendorName(String? vendorName);

  EventDetailEntity vendorPhone(String? vendorPhone);

  EventDetailEntity vendorPhoneCountrycode(String? vendorPhoneCountrycode);

  EventDetailEntity vendorWebsite(String? vendorWebsite);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventDetailEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventDetailEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  EventDetailEntity call({
    String? eventId,
    EventEntity? event,
    List<EventCategoryEntity>? eventCategory,
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

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEventDetailEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEventDetailEntity.copyWith.fieldName(...)`
class _$EventDetailEntityCWProxyImpl implements _$EventDetailEntityCWProxy {
  const _$EventDetailEntityCWProxyImpl(this._value);

  final EventDetailEntity _value;

  @override
  EventDetailEntity eventId(String? eventId) => this(eventId: eventId);

  @override
  EventDetailEntity event(EventEntity? event) => this(event: event);

  @override
  EventDetailEntity eventCategory(List<EventCategoryEntity>? eventCategory) =>
      this(eventCategory: eventCategory);

  @override
  EventDetailEntity eventCategoryType(List<String>? eventCategoryType) =>
      this(eventCategoryType: eventCategoryType);

  @override
  EventDetailEntity maxPrice(String? maxPrice) => this(maxPrice: maxPrice);

  @override
  EventDetailEntity minPrice(String? minPrice) => this(minPrice: minPrice);

  @override
  EventDetailEntity vendorEmail(String? vendorEmail) =>
      this(vendorEmail: vendorEmail);

  @override
  EventDetailEntity vendorImageUrl(String? vendorImageUrl) =>
      this(vendorImageUrl: vendorImageUrl);

  @override
  EventDetailEntity vendorName(String? vendorName) =>
      this(vendorName: vendorName);

  @override
  EventDetailEntity vendorPhone(String? vendorPhone) =>
      this(vendorPhone: vendorPhone);

  @override
  EventDetailEntity vendorPhoneCountrycode(String? vendorPhoneCountrycode) =>
      this(vendorPhoneCountrycode: vendorPhoneCountrycode);

  @override
  EventDetailEntity vendorWebsite(String? vendorWebsite) =>
      this(vendorWebsite: vendorWebsite);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventDetailEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventDetailEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  EventDetailEntity call({
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
    return EventDetailEntity(
      eventId: eventId == const $CopyWithPlaceholder()
          ? _value.eventId
          // ignore: cast_nullable_to_non_nullable
          : eventId as String?,
      event: event == const $CopyWithPlaceholder()
          ? _value.event
          // ignore: cast_nullable_to_non_nullable
          : event as EventEntity?,
      eventCategory: eventCategory == const $CopyWithPlaceholder()
          ? _value.eventCategory
          // ignore: cast_nullable_to_non_nullable
          : eventCategory as List<EventCategoryEntity>?,
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

extension $EventDetailEntityCopyWith on EventDetailEntity {
  /// Returns a callable class that can be used as follows: `instanceOfEventDetailEntity.copyWith(...)` or like so:`instanceOfEventDetailEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EventDetailEntityCWProxy get copyWith =>
      _$EventDetailEntityCWProxyImpl(this);
}

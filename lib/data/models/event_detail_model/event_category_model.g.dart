// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_category_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EventCategoryModelCWProxy {
  EventCategoryModel createdDatetime(String? createdDatetime);

  EventCategoryModel eventCategoryCurrency(String? eventCategoryCurrency);

  EventCategoryModel eventCategoryEntitlements(
      List<EventCategoryEntitlementModel>? eventCategoryEntitlements);

  EventCategoryModel eventCategoryId(String? eventCategoryId);

  EventCategoryModel eventCategoryName(String? eventCategoryName);

  EventCategoryModel eventCategoryPrice(String? eventCategoryPrice);

  EventCategoryModel eventId(String? eventId);

  EventCategoryModel eventCategoryType(List<String>? eventCategoryType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventCategoryModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventCategoryModel(...).copyWith(id: 12, name: "My name")
  /// ````
  EventCategoryModel call({
    String? createdDatetime,
    String? eventCategoryCurrency,
    List<EventCategoryEntitlementModel>? eventCategoryEntitlements,
    String? eventCategoryId,
    String? eventCategoryName,
    String? eventCategoryPrice,
    String? eventId,
    List<String>? eventCategoryType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEventCategoryModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEventCategoryModel.copyWith.fieldName(...)`
class _$EventCategoryModelCWProxyImpl implements _$EventCategoryModelCWProxy {
  const _$EventCategoryModelCWProxyImpl(this._value);

  final EventCategoryModel _value;

  @override
  EventCategoryModel createdDatetime(String? createdDatetime) =>
      this(createdDatetime: createdDatetime);

  @override
  EventCategoryModel eventCategoryCurrency(String? eventCategoryCurrency) =>
      this(eventCategoryCurrency: eventCategoryCurrency);

  @override
  EventCategoryModel eventCategoryEntitlements(
          List<EventCategoryEntitlementModel>? eventCategoryEntitlements) =>
      this(eventCategoryEntitlements: eventCategoryEntitlements);

  @override
  EventCategoryModel eventCategoryId(String? eventCategoryId) =>
      this(eventCategoryId: eventCategoryId);

  @override
  EventCategoryModel eventCategoryName(String? eventCategoryName) =>
      this(eventCategoryName: eventCategoryName);

  @override
  EventCategoryModel eventCategoryPrice(String? eventCategoryPrice) =>
      this(eventCategoryPrice: eventCategoryPrice);

  @override
  EventCategoryModel eventId(String? eventId) => this(eventId: eventId);

  @override
  EventCategoryModel eventCategoryType(List<String>? eventCategoryType) =>
      this(eventCategoryType: eventCategoryType);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventCategoryModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventCategoryModel(...).copyWith(id: 12, name: "My name")
  /// ````
  EventCategoryModel call({
    Object? createdDatetime = const $CopyWithPlaceholder(),
    Object? eventCategoryCurrency = const $CopyWithPlaceholder(),
    Object? eventCategoryEntitlements = const $CopyWithPlaceholder(),
    Object? eventCategoryId = const $CopyWithPlaceholder(),
    Object? eventCategoryName = const $CopyWithPlaceholder(),
    Object? eventCategoryPrice = const $CopyWithPlaceholder(),
    Object? eventId = const $CopyWithPlaceholder(),
    Object? eventCategoryType = const $CopyWithPlaceholder(),
  }) {
    return EventCategoryModel(
      createdDatetime: createdDatetime == const $CopyWithPlaceholder()
          ? _value.createdDatetime
          // ignore: cast_nullable_to_non_nullable
          : createdDatetime as String?,
      eventCategoryCurrency:
          eventCategoryCurrency == const $CopyWithPlaceholder()
              ? _value.eventCategoryCurrency
              // ignore: cast_nullable_to_non_nullable
              : eventCategoryCurrency as String?,
      eventCategoryEntitlements: eventCategoryEntitlements ==
              const $CopyWithPlaceholder()
          ? _value.eventCategoryEntitlements
          // ignore: cast_nullable_to_non_nullable
          : eventCategoryEntitlements as List<EventCategoryEntitlementModel>?,
      eventCategoryId: eventCategoryId == const $CopyWithPlaceholder()
          ? _value.eventCategoryId
          // ignore: cast_nullable_to_non_nullable
          : eventCategoryId as String?,
      eventCategoryName: eventCategoryName == const $CopyWithPlaceholder()
          ? _value.eventCategoryName
          // ignore: cast_nullable_to_non_nullable
          : eventCategoryName as String?,
      eventCategoryPrice: eventCategoryPrice == const $CopyWithPlaceholder()
          ? _value.eventCategoryPrice
          // ignore: cast_nullable_to_non_nullable
          : eventCategoryPrice as String?,
      eventId: eventId == const $CopyWithPlaceholder()
          ? _value.eventId
          // ignore: cast_nullable_to_non_nullable
          : eventId as String?,
      eventCategoryType: eventCategoryType == const $CopyWithPlaceholder()
          ? _value.eventCategoryType
          // ignore: cast_nullable_to_non_nullable
          : eventCategoryType as List<String>?,
    );
  }
}

extension $EventCategoryModelCopyWith on EventCategoryModel {
  /// Returns a callable class that can be used as follows: `instanceOfEventCategoryModel.copyWith(...)` or like so:`instanceOfEventCategoryModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EventCategoryModelCWProxy get copyWith =>
      _$EventCategoryModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventCategoryModel _$EventCategoryModelFromJson(Map<String, dynamic> json) =>
    EventCategoryModel(
      createdDatetime: json['created_datetime'] as String?,
      eventCategoryCurrency: json['event_category_currency'] as String?,
      eventCategoryEntitlements: (json['event_category_entitlements']
              as List<dynamic>?)
          ?.map((e) =>
              EventCategoryEntitlementModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      eventCategoryId: json['event_category_id'] as String?,
      eventCategoryName: json['event_category_name'] as String?,
      eventCategoryPrice: json['event_category_price'] as String?,
      eventId: json['event_id'] as String?,
      eventCategoryType: (json['event_category_type'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$EventCategoryModelToJson(EventCategoryModel instance) =>
    <String, dynamic>{
      'event_category_id': instance.eventCategoryId,
      'event_id': instance.eventId,
      'event_category_name': instance.eventCategoryName,
      'event_category_price': instance.eventCategoryPrice,
      'event_category_currency': instance.eventCategoryCurrency,
      'created_datetime': instance.createdDatetime,
      'event_category_entitlements': instance.eventCategoryEntitlements,
      'event_category_type': instance.eventCategoryType,
    };

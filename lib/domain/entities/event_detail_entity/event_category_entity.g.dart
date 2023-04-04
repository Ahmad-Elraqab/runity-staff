// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_category_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EventCategoryEntityCWProxy {
  EventCategoryEntity createdDatetime(String? createdDatetime);

  EventCategoryEntity eventCategoryCurrency(String? eventCategoryCurrency);

  EventCategoryEntity eventCategoryEntitlements(
      List<EventCategoryEntitlementEntity>? eventCategoryEntitlements);

  EventCategoryEntity eventCategoryId(String? eventCategoryId);

  EventCategoryEntity eventCategoryName(String? eventCategoryName);

  EventCategoryEntity eventCategoryPrice(String? eventCategoryPrice);

  EventCategoryEntity eventId(String? eventId);

  EventCategoryEntity eventCategoryType(List<String>? eventCategoryType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventCategoryEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventCategoryEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  EventCategoryEntity call({
    String? createdDatetime,
    String? eventCategoryCurrency,
    List<EventCategoryEntitlementEntity>? eventCategoryEntitlements,
    String? eventCategoryId,
    String? eventCategoryName,
    String? eventCategoryPrice,
    String? eventId,
    List<String>? eventCategoryType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEventCategoryEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEventCategoryEntity.copyWith.fieldName(...)`
class _$EventCategoryEntityCWProxyImpl implements _$EventCategoryEntityCWProxy {
  const _$EventCategoryEntityCWProxyImpl(this._value);

  final EventCategoryEntity _value;

  @override
  EventCategoryEntity createdDatetime(String? createdDatetime) =>
      this(createdDatetime: createdDatetime);

  @override
  EventCategoryEntity eventCategoryCurrency(String? eventCategoryCurrency) =>
      this(eventCategoryCurrency: eventCategoryCurrency);

  @override
  EventCategoryEntity eventCategoryEntitlements(
          List<EventCategoryEntitlementEntity>? eventCategoryEntitlements) =>
      this(eventCategoryEntitlements: eventCategoryEntitlements);

  @override
  EventCategoryEntity eventCategoryId(String? eventCategoryId) =>
      this(eventCategoryId: eventCategoryId);

  @override
  EventCategoryEntity eventCategoryName(String? eventCategoryName) =>
      this(eventCategoryName: eventCategoryName);

  @override
  EventCategoryEntity eventCategoryPrice(String? eventCategoryPrice) =>
      this(eventCategoryPrice: eventCategoryPrice);

  @override
  EventCategoryEntity eventId(String? eventId) => this(eventId: eventId);

  @override
  EventCategoryEntity eventCategoryType(List<String>? eventCategoryType) =>
      this(eventCategoryType: eventCategoryType);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventCategoryEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventCategoryEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  EventCategoryEntity call({
    Object? createdDatetime = const $CopyWithPlaceholder(),
    Object? eventCategoryCurrency = const $CopyWithPlaceholder(),
    Object? eventCategoryEntitlements = const $CopyWithPlaceholder(),
    Object? eventCategoryId = const $CopyWithPlaceholder(),
    Object? eventCategoryName = const $CopyWithPlaceholder(),
    Object? eventCategoryPrice = const $CopyWithPlaceholder(),
    Object? eventId = const $CopyWithPlaceholder(),
    Object? eventCategoryType = const $CopyWithPlaceholder(),
  }) {
    return EventCategoryEntity(
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
          : eventCategoryEntitlements as List<EventCategoryEntitlementEntity>?,
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

extension $EventCategoryEntityCopyWith on EventCategoryEntity {
  /// Returns a callable class that can be used as follows: `instanceOfEventCategoryEntity.copyWith(...)` or like so:`instanceOfEventCategoryEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EventCategoryEntityCWProxy get copyWith =>
      _$EventCategoryEntityCWProxyImpl(this);
}

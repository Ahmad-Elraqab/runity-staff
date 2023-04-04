// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_category_entitlement_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EventCategoryEntitlementEntityCWProxy {
  EventCategoryEntitlementEntity eventId(String? eventId);

  EventCategoryEntitlementEntity eventEntitlementId(String? eventEntitlementId);

  EventCategoryEntitlementEntity eventEntitlementName(
      String? eventEntitlementName);

  EventCategoryEntitlementEntity eventEntitlementPrice(
      String? eventEntitlementPrice);

  EventCategoryEntitlementEntity eventEntitlementQuantity(
      String? eventEntitlementQuantity);

  EventCategoryEntitlementEntity itemMode(String? itemMode);

  EventCategoryEntitlementEntity subItems(
      List<EventCategoryEntitlementSubItemEntity>? subItems);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventCategoryEntitlementEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventCategoryEntitlementEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  EventCategoryEntitlementEntity call({
    String? eventId,
    String? eventEntitlementId,
    String? eventEntitlementName,
    String? eventEntitlementPrice,
    String? eventEntitlementQuantity,
    String? itemMode,
    List<EventCategoryEntitlementSubItemEntity>? subItems,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEventCategoryEntitlementEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEventCategoryEntitlementEntity.copyWith.fieldName(...)`
class _$EventCategoryEntitlementEntityCWProxyImpl
    implements _$EventCategoryEntitlementEntityCWProxy {
  const _$EventCategoryEntitlementEntityCWProxyImpl(this._value);

  final EventCategoryEntitlementEntity _value;

  @override
  EventCategoryEntitlementEntity eventId(String? eventId) =>
      this(eventId: eventId);

  @override
  EventCategoryEntitlementEntity eventEntitlementId(
          String? eventEntitlementId) =>
      this(eventEntitlementId: eventEntitlementId);

  @override
  EventCategoryEntitlementEntity eventEntitlementName(
          String? eventEntitlementName) =>
      this(eventEntitlementName: eventEntitlementName);

  @override
  EventCategoryEntitlementEntity eventEntitlementPrice(
          String? eventEntitlementPrice) =>
      this(eventEntitlementPrice: eventEntitlementPrice);

  @override
  EventCategoryEntitlementEntity eventEntitlementQuantity(
          String? eventEntitlementQuantity) =>
      this(eventEntitlementQuantity: eventEntitlementQuantity);

  @override
  EventCategoryEntitlementEntity itemMode(String? itemMode) =>
      this(itemMode: itemMode);

  @override
  EventCategoryEntitlementEntity subItems(
          List<EventCategoryEntitlementSubItemEntity>? subItems) =>
      this(subItems: subItems);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventCategoryEntitlementEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventCategoryEntitlementEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  EventCategoryEntitlementEntity call({
    Object? eventId = const $CopyWithPlaceholder(),
    Object? eventEntitlementId = const $CopyWithPlaceholder(),
    Object? eventEntitlementName = const $CopyWithPlaceholder(),
    Object? eventEntitlementPrice = const $CopyWithPlaceholder(),
    Object? eventEntitlementQuantity = const $CopyWithPlaceholder(),
    Object? itemMode = const $CopyWithPlaceholder(),
    Object? subItems = const $CopyWithPlaceholder(),
  }) {
    return EventCategoryEntitlementEntity(
      eventId: eventId == const $CopyWithPlaceholder()
          ? _value.eventId
          // ignore: cast_nullable_to_non_nullable
          : eventId as String?,
      eventEntitlementId: eventEntitlementId == const $CopyWithPlaceholder()
          ? _value.eventEntitlementId
          // ignore: cast_nullable_to_non_nullable
          : eventEntitlementId as String?,
      eventEntitlementName: eventEntitlementName == const $CopyWithPlaceholder()
          ? _value.eventEntitlementName
          // ignore: cast_nullable_to_non_nullable
          : eventEntitlementName as String?,
      eventEntitlementPrice:
          eventEntitlementPrice == const $CopyWithPlaceholder()
              ? _value.eventEntitlementPrice
              // ignore: cast_nullable_to_non_nullable
              : eventEntitlementPrice as String?,
      eventEntitlementQuantity:
          eventEntitlementQuantity == const $CopyWithPlaceholder()
              ? _value.eventEntitlementQuantity
              // ignore: cast_nullable_to_non_nullable
              : eventEntitlementQuantity as String?,
      itemMode: itemMode == const $CopyWithPlaceholder()
          ? _value.itemMode
          // ignore: cast_nullable_to_non_nullable
          : itemMode as String?,
      subItems: subItems == const $CopyWithPlaceholder()
          ? _value.subItems
          // ignore: cast_nullable_to_non_nullable
          : subItems as List<EventCategoryEntitlementSubItemEntity>?,
    );
  }
}

extension $EventCategoryEntitlementEntityCopyWith
    on EventCategoryEntitlementEntity {
  /// Returns a callable class that can be used as follows: `instanceOfEventCategoryEntitlementEntity.copyWith(...)` or like so:`instanceOfEventCategoryEntitlementEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EventCategoryEntitlementEntityCWProxy get copyWith =>
      _$EventCategoryEntitlementEntityCWProxyImpl(this);
}

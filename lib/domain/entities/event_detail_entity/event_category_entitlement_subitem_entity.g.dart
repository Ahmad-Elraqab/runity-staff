// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_category_entitlement_subitem_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EventCategoryEntitlementSubItemEntityCWProxy {
  EventCategoryEntitlementSubItemEntity eventEntitlementId(
      String? eventEntitlementId);

  EventCategoryEntitlementSubItemEntity eventEntitlementName(
      String? eventEntitlementName);

  EventCategoryEntitlementSubItemEntity eventEntitlementPrice(
      String? eventEntitlementPrice);

  EventCategoryEntitlementSubItemEntity availableQuantity(
      String? availableQuantity);

  EventCategoryEntitlementSubItemEntity eventEntitlementQuantity(
      String? eventEntitlementQuantity);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventCategoryEntitlementSubItemEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventCategoryEntitlementSubItemEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  EventCategoryEntitlementSubItemEntity call({
    String? eventEntitlementId,
    String? eventEntitlementName,
    String? eventEntitlementPrice,
    String? availableQuantity,
    String? eventEntitlementQuantity,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEventCategoryEntitlementSubItemEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEventCategoryEntitlementSubItemEntity.copyWith.fieldName(...)`
class _$EventCategoryEntitlementSubItemEntityCWProxyImpl
    implements _$EventCategoryEntitlementSubItemEntityCWProxy {
  const _$EventCategoryEntitlementSubItemEntityCWProxyImpl(this._value);

  final EventCategoryEntitlementSubItemEntity _value;

  @override
  EventCategoryEntitlementSubItemEntity eventEntitlementId(
          String? eventEntitlementId) =>
      this(eventEntitlementId: eventEntitlementId);

  @override
  EventCategoryEntitlementSubItemEntity eventEntitlementName(
          String? eventEntitlementName) =>
      this(eventEntitlementName: eventEntitlementName);

  @override
  EventCategoryEntitlementSubItemEntity eventEntitlementPrice(
          String? eventEntitlementPrice) =>
      this(eventEntitlementPrice: eventEntitlementPrice);

  @override
  EventCategoryEntitlementSubItemEntity availableQuantity(
          String? availableQuantity) =>
      this(availableQuantity: availableQuantity);

  @override
  EventCategoryEntitlementSubItemEntity eventEntitlementQuantity(
          String? eventEntitlementQuantity) =>
      this(eventEntitlementQuantity: eventEntitlementQuantity);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventCategoryEntitlementSubItemEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventCategoryEntitlementSubItemEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  EventCategoryEntitlementSubItemEntity call({
    Object? eventEntitlementId = const $CopyWithPlaceholder(),
    Object? eventEntitlementName = const $CopyWithPlaceholder(),
    Object? eventEntitlementPrice = const $CopyWithPlaceholder(),
    Object? availableQuantity = const $CopyWithPlaceholder(),
    Object? eventEntitlementQuantity = const $CopyWithPlaceholder(),
  }) {
    return EventCategoryEntitlementSubItemEntity(
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
      availableQuantity: availableQuantity == const $CopyWithPlaceholder()
          ? _value.availableQuantity
          // ignore: cast_nullable_to_non_nullable
          : availableQuantity as String?,
      eventEntitlementQuantity:
          eventEntitlementQuantity == const $CopyWithPlaceholder()
              ? _value.eventEntitlementQuantity
              // ignore: cast_nullable_to_non_nullable
              : eventEntitlementQuantity as String?,
    );
  }
}

extension $EventCategoryEntitlementSubItemEntityCopyWith
    on EventCategoryEntitlementSubItemEntity {
  /// Returns a callable class that can be used as follows: `instanceOfEventCategoryEntitlementSubItemEntity.copyWith(...)` or like so:`instanceOfEventCategoryEntitlementSubItemEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EventCategoryEntitlementSubItemEntityCWProxy get copyWith =>
      _$EventCategoryEntitlementSubItemEntityCWProxyImpl(this);
}

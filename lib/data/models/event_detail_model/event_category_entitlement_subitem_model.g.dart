// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_category_entitlement_subitem_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EventCategoryEntitlementSubItemModelCWProxy {
  EventCategoryEntitlementSubItemModel eventEntitlementId(
      String? eventEntitlementId);

  EventCategoryEntitlementSubItemModel eventEntitlementName(
      String? eventEntitlementName);

  EventCategoryEntitlementSubItemModel eventEntitlementPrice(
      String? eventEntitlementPrice);

  EventCategoryEntitlementSubItemModel availableQuantity(
      int? availableQuantity);

  EventCategoryEntitlementSubItemModel eventEntitlementQuantity(
      String? eventEntitlementQuantity);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventCategoryEntitlementSubItemModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventCategoryEntitlementSubItemModel(...).copyWith(id: 12, name: "My name")
  /// ````
  EventCategoryEntitlementSubItemModel call({
    String? eventEntitlementId,
    String? eventEntitlementName,
    String? eventEntitlementPrice,
    int? availableQuantity,
    String? eventEntitlementQuantity,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEventCategoryEntitlementSubItemModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEventCategoryEntitlementSubItemModel.copyWith.fieldName(...)`
class _$EventCategoryEntitlementSubItemModelCWProxyImpl
    implements _$EventCategoryEntitlementSubItemModelCWProxy {
  const _$EventCategoryEntitlementSubItemModelCWProxyImpl(this._value);

  final EventCategoryEntitlementSubItemModel _value;

  @override
  EventCategoryEntitlementSubItemModel eventEntitlementId(
          String? eventEntitlementId) =>
      this(eventEntitlementId: eventEntitlementId);

  @override
  EventCategoryEntitlementSubItemModel eventEntitlementName(
          String? eventEntitlementName) =>
      this(eventEntitlementName: eventEntitlementName);

  @override
  EventCategoryEntitlementSubItemModel eventEntitlementPrice(
          String? eventEntitlementPrice) =>
      this(eventEntitlementPrice: eventEntitlementPrice);

  @override
  EventCategoryEntitlementSubItemModel availableQuantity(
          int? availableQuantity) =>
      this(availableQuantity: availableQuantity);

  @override
  EventCategoryEntitlementSubItemModel eventEntitlementQuantity(
          String? eventEntitlementQuantity) =>
      this(eventEntitlementQuantity: eventEntitlementQuantity);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventCategoryEntitlementSubItemModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventCategoryEntitlementSubItemModel(...).copyWith(id: 12, name: "My name")
  /// ````
  EventCategoryEntitlementSubItemModel call({
    Object? eventEntitlementId = const $CopyWithPlaceholder(),
    Object? eventEntitlementName = const $CopyWithPlaceholder(),
    Object? eventEntitlementPrice = const $CopyWithPlaceholder(),
    Object? availableQuantity = const $CopyWithPlaceholder(),
    Object? eventEntitlementQuantity = const $CopyWithPlaceholder(),
  }) {
    return EventCategoryEntitlementSubItemModel(
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
          : availableQuantity as int?,
      eventEntitlementQuantity:
          eventEntitlementQuantity == const $CopyWithPlaceholder()
              ? _value.eventEntitlementQuantity
              // ignore: cast_nullable_to_non_nullable
              : eventEntitlementQuantity as String?,
    );
  }
}

extension $EventCategoryEntitlementSubItemModelCopyWith
    on EventCategoryEntitlementSubItemModel {
  /// Returns a callable class that can be used as follows: `instanceOfEventCategoryEntitlementSubItemModel.copyWith(...)` or like so:`instanceOfEventCategoryEntitlementSubItemModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EventCategoryEntitlementSubItemModelCWProxy get copyWith =>
      _$EventCategoryEntitlementSubItemModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventCategoryEntitlementSubItemModel
    _$EventCategoryEntitlementSubItemModelFromJson(Map<String, dynamic> json) =>
        EventCategoryEntitlementSubItemModel(
          eventEntitlementId: json['event_entitlement_id'] as String?,
          eventEntitlementName: json['event_entitlement_name'] as String?,
          eventEntitlementPrice: json['event_entitlement_price'] as String?,
          availableQuantity: json['available_quantity'] as int?,
          eventEntitlementQuantity:
              json['event_entitlement_quantity'] as String?,
        );

Map<String, dynamic> _$EventCategoryEntitlementSubItemModelToJson(
        EventCategoryEntitlementSubItemModel instance) =>
    <String, dynamic>{
      'available_quantity': instance.availableQuantity,
      'event_entitlement_id': instance.eventEntitlementId,
      'event_entitlement_name': instance.eventEntitlementName,
      'event_entitlement_price': instance.eventEntitlementPrice,
      'event_entitlement_quantity': instance.eventEntitlementQuantity,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_category_entitlement_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EventCategoryEntitlementModelCWProxy {
  EventCategoryEntitlementModel eventId(String? eventId);

  EventCategoryEntitlementModel eventEntitlementId(String? eventEntitlementId);

  EventCategoryEntitlementModel eventEntitlementName(
      String? eventEntitlementName);

  EventCategoryEntitlementModel eventEntitlementPrice(
      String? eventEntitlementPrice);

  EventCategoryEntitlementModel eventEntitlementQuantity(
      String? eventEntitlementQuantity);

  EventCategoryEntitlementModel itemMode(String? itemMode);

  EventCategoryEntitlementModel subItems(
      List<EventCategoryEntitlementSubItemModel>? subItems);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventCategoryEntitlementModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventCategoryEntitlementModel(...).copyWith(id: 12, name: "My name")
  /// ````
  EventCategoryEntitlementModel call({
    String? eventId,
    String? eventEntitlementId,
    String? eventEntitlementName,
    String? eventEntitlementPrice,
    String? eventEntitlementQuantity,
    String? itemMode,
    List<EventCategoryEntitlementSubItemModel>? subItems,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEventCategoryEntitlementModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEventCategoryEntitlementModel.copyWith.fieldName(...)`
class _$EventCategoryEntitlementModelCWProxyImpl
    implements _$EventCategoryEntitlementModelCWProxy {
  const _$EventCategoryEntitlementModelCWProxyImpl(this._value);

  final EventCategoryEntitlementModel _value;

  @override
  EventCategoryEntitlementModel eventId(String? eventId) =>
      this(eventId: eventId);

  @override
  EventCategoryEntitlementModel eventEntitlementId(
          String? eventEntitlementId) =>
      this(eventEntitlementId: eventEntitlementId);

  @override
  EventCategoryEntitlementModel eventEntitlementName(
          String? eventEntitlementName) =>
      this(eventEntitlementName: eventEntitlementName);

  @override
  EventCategoryEntitlementModel eventEntitlementPrice(
          String? eventEntitlementPrice) =>
      this(eventEntitlementPrice: eventEntitlementPrice);

  @override
  EventCategoryEntitlementModel eventEntitlementQuantity(
          String? eventEntitlementQuantity) =>
      this(eventEntitlementQuantity: eventEntitlementQuantity);

  @override
  EventCategoryEntitlementModel itemMode(String? itemMode) =>
      this(itemMode: itemMode);

  @override
  EventCategoryEntitlementModel subItems(
          List<EventCategoryEntitlementSubItemModel>? subItems) =>
      this(subItems: subItems);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventCategoryEntitlementModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventCategoryEntitlementModel(...).copyWith(id: 12, name: "My name")
  /// ````
  EventCategoryEntitlementModel call({
    Object? eventId = const $CopyWithPlaceholder(),
    Object? eventEntitlementId = const $CopyWithPlaceholder(),
    Object? eventEntitlementName = const $CopyWithPlaceholder(),
    Object? eventEntitlementPrice = const $CopyWithPlaceholder(),
    Object? eventEntitlementQuantity = const $CopyWithPlaceholder(),
    Object? itemMode = const $CopyWithPlaceholder(),
    Object? subItems = const $CopyWithPlaceholder(),
  }) {
    return EventCategoryEntitlementModel(
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
          : subItems as List<EventCategoryEntitlementSubItemModel>?,
    );
  }
}

extension $EventCategoryEntitlementModelCopyWith
    on EventCategoryEntitlementModel {
  /// Returns a callable class that can be used as follows: `instanceOfEventCategoryEntitlementModel.copyWith(...)` or like so:`instanceOfEventCategoryEntitlementModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EventCategoryEntitlementModelCWProxy get copyWith =>
      _$EventCategoryEntitlementModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventCategoryEntitlementModel _$EventCategoryEntitlementModelFromJson(
        Map<String, dynamic> json) =>
    EventCategoryEntitlementModel(
      eventId: json['event_id'] as String?,
      eventEntitlementId: json['event_entitlement_id'] as String?,
      eventEntitlementName: json['event_entitlement_name'] as String?,
      eventEntitlementPrice: json['event_entitlement_price'] as String?,
      eventEntitlementQuantity: json['event_entitlement_quantity'] as String?,
      itemMode: json['item_mode'] as String?,
      subItems: (json['subItems'] as List<dynamic>?)
          ?.map((e) => EventCategoryEntitlementSubItemModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EventCategoryEntitlementModelToJson(
        EventCategoryEntitlementModel instance) =>
    <String, dynamic>{
      'event_entitlement_id': instance.eventEntitlementId,
      'event_id': instance.eventId,
      'event_entitlement_name': instance.eventEntitlementName,
      'event_entitlement_price': instance.eventEntitlementPrice,
      'event_entitlement_quantity': instance.eventEntitlementQuantity,
      'item_mode': instance.itemMode,
      'subItems': instance.subItems,
    };

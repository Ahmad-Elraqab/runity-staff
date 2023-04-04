// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderItemModelCWProxy {
  OrderItemModel eventName(String? eventName);

  OrderItemModel items(List<OrderItemDetailModel>? items);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderItemModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderItemModel(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderItemModel call({
    String? eventName,
    List<OrderItemDetailModel>? items,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOrderItemModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfOrderItemModel.copyWith.fieldName(...)`
class _$OrderItemModelCWProxyImpl implements _$OrderItemModelCWProxy {
  const _$OrderItemModelCWProxyImpl(this._value);

  final OrderItemModel _value;

  @override
  OrderItemModel eventName(String? eventName) => this(eventName: eventName);

  @override
  OrderItemModel items(List<OrderItemDetailModel>? items) => this(items: items);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderItemModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderItemModel(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderItemModel call({
    Object? eventName = const $CopyWithPlaceholder(),
    Object? items = const $CopyWithPlaceholder(),
  }) {
    return OrderItemModel(
      eventName: eventName == const $CopyWithPlaceholder()
          ? _value.eventName
          // ignore: cast_nullable_to_non_nullable
          : eventName as String?,
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<OrderItemDetailModel>?,
    );
  }
}

extension $OrderItemModelCopyWith on OrderItemModel {
  /// Returns a callable class that can be used as follows: `instanceOfOrderItemModel.copyWith(...)` or like so:`instanceOfOrderItemModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderItemModelCWProxy get copyWith => _$OrderItemModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) =>
    OrderItemModel(
      eventName: json['name'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => OrderItemDetailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderItemModelToJson(OrderItemModel instance) =>
    <String, dynamic>{
      'name': instance.eventName,
      'items': instance.items,
    };

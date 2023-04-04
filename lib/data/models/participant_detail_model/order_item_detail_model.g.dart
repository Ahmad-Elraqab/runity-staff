// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_detail_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderItemDetailModelCWProxy {
  OrderItemDetailModel itemId(String? itemId);

  OrderItemDetailModel itemName(String? itemName);

  OrderItemDetailModel itemPrice(String? itemPrice);

  OrderItemDetailModel itemQuantity(String? itemQuantity);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderItemDetailModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderItemDetailModel(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderItemDetailModel call({
    String? itemId,
    String? itemName,
    String? itemPrice,
    String? itemQuantity,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOrderItemDetailModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfOrderItemDetailModel.copyWith.fieldName(...)`
class _$OrderItemDetailModelCWProxyImpl
    implements _$OrderItemDetailModelCWProxy {
  const _$OrderItemDetailModelCWProxyImpl(this._value);

  final OrderItemDetailModel _value;

  @override
  OrderItemDetailModel itemId(String? itemId) => this(itemId: itemId);

  @override
  OrderItemDetailModel itemName(String? itemName) => this(itemName: itemName);

  @override
  OrderItemDetailModel itemPrice(String? itemPrice) =>
      this(itemPrice: itemPrice);

  @override
  OrderItemDetailModel itemQuantity(String? itemQuantity) =>
      this(itemQuantity: itemQuantity);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderItemDetailModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderItemDetailModel(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderItemDetailModel call({
    Object? itemId = const $CopyWithPlaceholder(),
    Object? itemName = const $CopyWithPlaceholder(),
    Object? itemPrice = const $CopyWithPlaceholder(),
    Object? itemQuantity = const $CopyWithPlaceholder(),
  }) {
    return OrderItemDetailModel(
      itemId: itemId == const $CopyWithPlaceholder()
          ? _value.itemId
          // ignore: cast_nullable_to_non_nullable
          : itemId as String?,
      itemName: itemName == const $CopyWithPlaceholder()
          ? _value.itemName
          // ignore: cast_nullable_to_non_nullable
          : itemName as String?,
      itemPrice: itemPrice == const $CopyWithPlaceholder()
          ? _value.itemPrice
          // ignore: cast_nullable_to_non_nullable
          : itemPrice as String?,
      itemQuantity: itemQuantity == const $CopyWithPlaceholder()
          ? _value.itemQuantity
          // ignore: cast_nullable_to_non_nullable
          : itemQuantity as String?,
    );
  }
}

extension $OrderItemDetailModelCopyWith on OrderItemDetailModel {
  /// Returns a callable class that can be used as follows: `instanceOfOrderItemDetailModel.copyWith(...)` or like so:`instanceOfOrderItemDetailModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderItemDetailModelCWProxy get copyWith =>
      _$OrderItemDetailModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderItemDetailModel _$OrderItemDetailModelFromJson(
        Map<String, dynamic> json) =>
    OrderItemDetailModel(
      itemId: json['item_id'] as String?,
      itemName: json['item_name'] as String?,
      itemPrice: json['item_price'] as String?,
      itemQuantity: json['item_quantity'] as String?,
    );

Map<String, dynamic> _$OrderItemDetailModelToJson(
        OrderItemDetailModel instance) =>
    <String, dynamic>{
      'item_id': instance.itemId,
      'item_name': instance.itemName,
      'item_price': instance.itemPrice,
      'item_quantity': instance.itemQuantity,
    };

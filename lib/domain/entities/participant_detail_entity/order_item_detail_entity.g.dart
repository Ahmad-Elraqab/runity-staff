// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_detail_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderItemDetailEntityCWProxy {
  OrderItemDetailEntity itemId(String? itemId);

  OrderItemDetailEntity itemName(String? itemName);

  OrderItemDetailEntity itemPrice(String? itemPrice);

  OrderItemDetailEntity itemQuantity(String? itemQuantity);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderItemDetailEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderItemDetailEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderItemDetailEntity call({
    String? itemId,
    String? itemName,
    String? itemPrice,
    String? itemQuantity,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOrderItemDetailEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfOrderItemDetailEntity.copyWith.fieldName(...)`
class _$OrderItemDetailEntityCWProxyImpl
    implements _$OrderItemDetailEntityCWProxy {
  const _$OrderItemDetailEntityCWProxyImpl(this._value);

  final OrderItemDetailEntity _value;

  @override
  OrderItemDetailEntity itemId(String? itemId) => this(itemId: itemId);

  @override
  OrderItemDetailEntity itemName(String? itemName) => this(itemName: itemName);

  @override
  OrderItemDetailEntity itemPrice(String? itemPrice) =>
      this(itemPrice: itemPrice);

  @override
  OrderItemDetailEntity itemQuantity(String? itemQuantity) =>
      this(itemQuantity: itemQuantity);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderItemDetailEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderItemDetailEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderItemDetailEntity call({
    Object? itemId = const $CopyWithPlaceholder(),
    Object? itemName = const $CopyWithPlaceholder(),
    Object? itemPrice = const $CopyWithPlaceholder(),
    Object? itemQuantity = const $CopyWithPlaceholder(),
  }) {
    return OrderItemDetailEntity(
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

extension $OrderItemDetailEntityCopyWith on OrderItemDetailEntity {
  /// Returns a callable class that can be used as follows: `instanceOfOrderItemDetailEntity.copyWith(...)` or like so:`instanceOfOrderItemDetailEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderItemDetailEntityCWProxy get copyWith =>
      _$OrderItemDetailEntityCWProxyImpl(this);
}

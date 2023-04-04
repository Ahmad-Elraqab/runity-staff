// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderItemEntityCWProxy {
  OrderItemEntity eventName(String? eventName);

  OrderItemEntity items(List<OrderItemDetailEntity>? items);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderItemEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderItemEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderItemEntity call({
    String? eventName,
    List<OrderItemDetailEntity>? items,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOrderItemEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfOrderItemEntity.copyWith.fieldName(...)`
class _$OrderItemEntityCWProxyImpl implements _$OrderItemEntityCWProxy {
  const _$OrderItemEntityCWProxyImpl(this._value);

  final OrderItemEntity _value;

  @override
  OrderItemEntity eventName(String? eventName) => this(eventName: eventName);

  @override
  OrderItemEntity items(List<OrderItemDetailEntity>? items) =>
      this(items: items);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderItemEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderItemEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderItemEntity call({
    Object? eventName = const $CopyWithPlaceholder(),
    Object? items = const $CopyWithPlaceholder(),
  }) {
    return OrderItemEntity(
      eventName: eventName == const $CopyWithPlaceholder()
          ? _value.eventName
          // ignore: cast_nullable_to_non_nullable
          : eventName as String?,
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<OrderItemDetailEntity>?,
    );
  }
}

extension $OrderItemEntityCopyWith on OrderItemEntity {
  /// Returns a callable class that can be used as follows: `instanceOfOrderItemEntity.copyWith(...)` or like so:`instanceOfOrderItemEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderItemEntityCWProxy get copyWith => _$OrderItemEntityCWProxyImpl(this);
}

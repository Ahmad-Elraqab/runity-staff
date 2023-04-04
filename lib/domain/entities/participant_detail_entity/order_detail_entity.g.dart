// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderDetailEntityCWProxy {
  OrderDetailEntity event(OrderItemEntity? event);

  OrderDetailEntity paymentCharges(String? paymentCharges);

  OrderDetailEntity postageFee(String? postageFee);

  OrderDetailEntity totalPayment(String? totalPayment);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderDetailEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderDetailEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderDetailEntity call({
    OrderItemEntity? event,
    String? paymentCharges,
    String? postageFee,
    String? totalPayment,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOrderDetailEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfOrderDetailEntity.copyWith.fieldName(...)`
class _$OrderDetailEntityCWProxyImpl implements _$OrderDetailEntityCWProxy {
  const _$OrderDetailEntityCWProxyImpl(this._value);

  final OrderDetailEntity _value;

  @override
  OrderDetailEntity event(OrderItemEntity? event) => this(event: event);

  @override
  OrderDetailEntity paymentCharges(String? paymentCharges) =>
      this(paymentCharges: paymentCharges);

  @override
  OrderDetailEntity postageFee(String? postageFee) =>
      this(postageFee: postageFee);

  @override
  OrderDetailEntity totalPayment(String? totalPayment) =>
      this(totalPayment: totalPayment);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderDetailEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderDetailEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderDetailEntity call({
    Object? event = const $CopyWithPlaceholder(),
    Object? paymentCharges = const $CopyWithPlaceholder(),
    Object? postageFee = const $CopyWithPlaceholder(),
    Object? totalPayment = const $CopyWithPlaceholder(),
  }) {
    return OrderDetailEntity(
      event: event == const $CopyWithPlaceholder()
          ? _value.event
          // ignore: cast_nullable_to_non_nullable
          : event as OrderItemEntity?,
      paymentCharges: paymentCharges == const $CopyWithPlaceholder()
          ? _value.paymentCharges
          // ignore: cast_nullable_to_non_nullable
          : paymentCharges as String?,
      postageFee: postageFee == const $CopyWithPlaceholder()
          ? _value.postageFee
          // ignore: cast_nullable_to_non_nullable
          : postageFee as String?,
      totalPayment: totalPayment == const $CopyWithPlaceholder()
          ? _value.totalPayment
          // ignore: cast_nullable_to_non_nullable
          : totalPayment as String?,
    );
  }
}

extension $OrderDetailEntityCopyWith on OrderDetailEntity {
  /// Returns a callable class that can be used as follows: `instanceOfOrderDetailEntity.copyWith(...)` or like so:`instanceOfOrderDetailEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderDetailEntityCWProxy get copyWith =>
      _$OrderDetailEntityCWProxyImpl(this);
}

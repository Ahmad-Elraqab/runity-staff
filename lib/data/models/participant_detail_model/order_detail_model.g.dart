// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderDetailModelCWProxy {
  OrderDetailModel event(OrderItemModel? event);

  OrderDetailModel paymentCharges(String? paymentCharges);

  OrderDetailModel postageFee(String? postageFee);

  OrderDetailModel totalPayment(String? totalPayment);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderDetailModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderDetailModel(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderDetailModel call({
    OrderItemModel? event,
    String? paymentCharges,
    String? postageFee,
    String? totalPayment,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOrderDetailModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfOrderDetailModel.copyWith.fieldName(...)`
class _$OrderDetailModelCWProxyImpl implements _$OrderDetailModelCWProxy {
  const _$OrderDetailModelCWProxyImpl(this._value);

  final OrderDetailModel _value;

  @override
  OrderDetailModel event(OrderItemModel? event) => this(event: event);

  @override
  OrderDetailModel paymentCharges(String? paymentCharges) =>
      this(paymentCharges: paymentCharges);

  @override
  OrderDetailModel postageFee(String? postageFee) =>
      this(postageFee: postageFee);

  @override
  OrderDetailModel totalPayment(String? totalPayment) =>
      this(totalPayment: totalPayment);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderDetailModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderDetailModel(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderDetailModel call({
    Object? event = const $CopyWithPlaceholder(),
    Object? paymentCharges = const $CopyWithPlaceholder(),
    Object? postageFee = const $CopyWithPlaceholder(),
    Object? totalPayment = const $CopyWithPlaceholder(),
  }) {
    return OrderDetailModel(
      event: event == const $CopyWithPlaceholder()
          ? _value.event
          // ignore: cast_nullable_to_non_nullable
          : event as OrderItemModel?,
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

extension $OrderDetailModelCopyWith on OrderDetailModel {
  /// Returns a callable class that can be used as follows: `instanceOfOrderDetailModel.copyWith(...)` or like so:`instanceOfOrderDetailModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderDetailModelCWProxy get copyWith => _$OrderDetailModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailModel _$OrderDetailModelFromJson(Map<String, dynamic> json) =>
    OrderDetailModel(
      event: json['event'] == null
          ? null
          : OrderItemModel.fromJson(json['event'] as Map<String, dynamic>),
      paymentCharges: json['paymentCharges'] as String?,
      postageFee: json['postageFee'] as String?,
      totalPayment: json['totalPayment'] as String?,
    );

Map<String, dynamic> _$OrderDetailModelToJson(OrderDetailModel instance) =>
    <String, dynamic>{
      'event': instance.event,
      'postageFee': instance.postageFee,
      'paymentCharges': instance.paymentCharges,
      'totalPayment': instance.totalPayment,
    };

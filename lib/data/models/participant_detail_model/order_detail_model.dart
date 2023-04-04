// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:event_app/data/models/participant_detail_model/order_item_model.dart';
import 'package:event_app/domain/entities/participant_detail_entity/order_detail_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'order_detail_model.g.dart';

@CopyWith()
@JsonSerializable()
class OrderDetailModel extends Equatable {
  const OrderDetailModel({
    this.event,
    this.paymentCharges,
    this.postageFee,
    this.totalPayment,
  });

  @JsonKey(name: 'event')
  final OrderItemModel? event;
  @JsonKey(name: 'postageFee')
  final String? postageFee;
  @JsonKey(name: 'paymentCharges')
  final String? paymentCharges;
  @JsonKey(name: 'totalPayment')
  final String? totalPayment;

  @override
  List<Object?> get props => [
        event,
        paymentCharges,
        postageFee,
        totalPayment,
      ];

  factory OrderDetailModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailModelFromJson(json);
  Map<String, dynamic> toJson() => _$OrderDetailModelToJson(this);

  OrderDetailEntity toEntity() => OrderDetailEntity(
        event: event!.toEntity(),
        paymentCharges: paymentCharges,
        postageFee: postageFee,
        totalPayment: totalPayment,
      );
}

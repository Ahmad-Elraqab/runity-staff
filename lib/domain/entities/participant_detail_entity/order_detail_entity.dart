// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:event_app/domain/entities/participant_detail_entity/order_item_entity.dart';
import 'package:equatable/equatable.dart';

part 'order_detail_entity.g.dart';

@CopyWith()
class OrderDetailEntity extends Equatable {
  const OrderDetailEntity({
    this.event,
    this.paymentCharges,
    this.postageFee,
    this.totalPayment,
  });

  final OrderItemEntity? event;
  final String? postageFee;
  final String? paymentCharges;
  final String? totalPayment;

  @override
  List<Object?> get props => [
        event,
        paymentCharges,
        postageFee,
        totalPayment,
      ];
}

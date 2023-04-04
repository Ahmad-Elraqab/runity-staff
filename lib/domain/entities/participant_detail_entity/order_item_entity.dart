// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:event_app/domain/entities/participant_detail_entity/order_item_detail_entity.dart';

part 'order_item_entity.g.dart';

@CopyWith()
class OrderItemEntity extends Equatable {
  const OrderItemEntity({
    this.eventName,
    this.items,
  });

  final String? eventName;
  final List<OrderItemDetailEntity>? items;

  @override
  List<Object?> get props => [
        eventName,
        items,
      ];
}

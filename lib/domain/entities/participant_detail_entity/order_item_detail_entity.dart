// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'order_item_detail_entity.g.dart';

@CopyWith()
class OrderItemDetailEntity extends Equatable {
  const OrderItemDetailEntity({
    this.itemId,
    this.itemName,
    this.itemPrice,
    this.itemQuantity,
  });
  final String? itemId;
  final String? itemName;
  final String? itemPrice;
  final String? itemQuantity;
  @override
  List<Object?> get props => [
        itemId,
        itemName,
        itemPrice,
        itemQuantity,
      ];
}

// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:event_app/data/models/participant_model/participant_item_model.dart';
import 'package:event_app/domain/entities/participant_detail_entity/order_item_detail_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'order_item_detail_model.g.dart';

@CopyWith()
@JsonSerializable()
class OrderItemDetailModel extends Equatable {
  const OrderItemDetailModel({
    this.itemId,
    this.itemName,
    this.itemPrice,
    this.itemQuantity,
  });
  @JsonKey(name: 'item_id')
  final String? itemId;
  @JsonKey(name: 'item_name')
  final String? itemName;
  @JsonKey(name: 'item_price')
  final String? itemPrice;
  @JsonKey(name: 'item_quantity')
  final String? itemQuantity;
  @override
  List<Object?> get props => [
        itemId,
        itemName,
        itemPrice,
        itemQuantity,
      ];

  factory OrderItemDetailModel.fromJson(Map<String, dynamic> json) =>
      _$OrderItemDetailModelFromJson(json);
  Map<String, dynamic> toJson() => _$OrderItemDetailModelToJson(this);

  OrderItemDetailEntity toEntity() => OrderItemDetailEntity(
        itemId: itemId,
        itemName: itemName,
        itemPrice: itemPrice,
        itemQuantity: itemQuantity,
      );
}

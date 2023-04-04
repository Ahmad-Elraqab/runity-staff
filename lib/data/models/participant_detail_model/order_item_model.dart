// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:event_app/data/models/participant_detail_model/order_item_detail_model.dart';
import 'package:event_app/data/models/participant_model/participant_item_model.dart';
import 'package:event_app/domain/entities/participant_detail_entity/order_item_detail_entity.dart';
import 'package:event_app/domain/entities/participant_detail_entity/order_item_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'order_item_model.g.dart';

@CopyWith()
@JsonSerializable()
class OrderItemModel extends Equatable {
  const OrderItemModel({
    this.eventName,
    this.items,
  });

  @JsonKey(name: 'name')
  final String? eventName;
  @JsonKey(name: 'items')
  final List<OrderItemDetailModel>? items;

  @override
  List<Object?> get props => [
        eventName,
        items,
      ];

  factory OrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$OrderItemModelFromJson(json);
  Map<String, dynamic> toJson() => _$OrderItemModelToJson(this);

  OrderItemEntity toEntity() => OrderItemEntity(
        eventName: eventName,
        items: items!
            .map((e) => OrderItemDetailEntity(
                itemId: e.itemId,
                itemName: e.itemName,
                itemPrice: e.itemPrice,
                itemQuantity: e.itemQuantity))
            .toList(),
      );
}

// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:event_app/data/models/event_detail_model/event_category_entitlement_subitem_model.dart';
import 'package:event_app/domain/entities/event_detail_entity/event_category_entitlement_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'event_category_entitlement_model.g.dart';

@CopyWith()
@JsonSerializable()
class EventCategoryEntitlementModel extends Equatable {
  const EventCategoryEntitlementModel({
    this.eventId,
    this.eventEntitlementId,
    this.eventEntitlementName,
    this.eventEntitlementPrice,
    this.eventEntitlementQuantity,
    this.itemMode,
    this.subItems,
  });

  @JsonKey(name: 'event_entitlement_id')
  final String? eventEntitlementId;
  @JsonKey(name: 'event_id')
  final String? eventId;
  @JsonKey(name: 'event_entitlement_name')
  final String? eventEntitlementName;
  @JsonKey(name: 'event_entitlement_price')
  final String? eventEntitlementPrice;
  @JsonKey(name: 'event_entitlement_quantity')
  final String? eventEntitlementQuantity;
  @JsonKey(name: 'item_mode')
  final String? itemMode;
  @JsonKey(name: 'subItems')
  final List<EventCategoryEntitlementSubItemModel>? subItems;

  @override
  List<Object?> get props => [
        eventId,
        eventEntitlementId,
        eventEntitlementName,
        eventEntitlementPrice,
        eventEntitlementQuantity,
        itemMode,
        subItems,
      ];

  factory EventCategoryEntitlementModel.fromJson(Map<String, dynamic> json) =>
      _$EventCategoryEntitlementModelFromJson(json);
  Map<String, dynamic> toJson() => _$EventCategoryEntitlementModelToJson(this);

  EventCategoryEntitlementEntity toEntity() => EventCategoryEntitlementEntity(
        eventId: eventId,
        eventEntitlementId: eventEntitlementId,
        eventEntitlementName: eventEntitlementName,
        eventEntitlementPrice: eventEntitlementPrice,
        eventEntitlementQuantity: eventEntitlementQuantity,
        itemMode: itemMode,
        subItems: subItems!.map((e) => e.toEntity()).toList(),
      );
}

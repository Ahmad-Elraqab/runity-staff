// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:event_app/domain/entities/event_detail_entity/event_category_entitlement_subitem_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'event_category_entitlement_subitem_model.g.dart';

@CopyWith()
@JsonSerializable()
class EventCategoryEntitlementSubItemModel extends Equatable {
  const EventCategoryEntitlementSubItemModel({
    this.eventEntitlementId,
    this.eventEntitlementName,
    this.eventEntitlementPrice,
    this.availableQuantity,
    this.eventEntitlementQuantity,
  });

  @JsonKey(name: 'available_quantity')
  final int? availableQuantity;
  @JsonKey(name: 'event_entitlement_id')
  final String? eventEntitlementId;
  @JsonKey(name: 'event_entitlement_name')
  final String? eventEntitlementName;
  @JsonKey(name: 'event_entitlement_price')
  final String? eventEntitlementPrice;
  @JsonKey(name: 'event_entitlement_quantity')
  final String? eventEntitlementQuantity;

  @override
  List<Object?> get props => [
        eventEntitlementId,
        eventEntitlementName,
        eventEntitlementPrice,
        availableQuantity,
        eventEntitlementQuantity,
      ];

  factory EventCategoryEntitlementSubItemModel.fromJson(
          Map<String, dynamic> json) =>
      _$EventCategoryEntitlementSubItemModelFromJson(json);
  Map<String, dynamic> toJson() =>
      _$EventCategoryEntitlementSubItemModelToJson(this);

  EventCategoryEntitlementSubItemEntity toEntity() =>
      EventCategoryEntitlementSubItemEntity(
        eventEntitlementId: eventEntitlementId,
        eventEntitlementName: eventEntitlementName,
        eventEntitlementPrice: eventEntitlementPrice,
        availableQuantity: availableQuantity.toString(),
        eventEntitlementQuantity: eventEntitlementQuantity,
      );
}

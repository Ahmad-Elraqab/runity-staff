// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:event_app/domain/entities/event_detail_entity/event_category_entitlement_subitem_entity.dart';
import 'package:equatable/equatable.dart';

part 'event_category_entitlement_entity.g.dart';

@CopyWith()
class EventCategoryEntitlementEntity extends Equatable {
  const EventCategoryEntitlementEntity({
    this.eventId,
    this.eventEntitlementId,
    this.eventEntitlementName,
    this.eventEntitlementPrice,
    this.eventEntitlementQuantity,
    this.itemMode,
    this.subItems,
  });

  final String? eventEntitlementId;
  final String? eventId;
  final String? eventEntitlementName;
  final String? eventEntitlementPrice;
  final String? eventEntitlementQuantity;
  final String? itemMode;
  final List<EventCategoryEntitlementSubItemEntity>? subItems;

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
}

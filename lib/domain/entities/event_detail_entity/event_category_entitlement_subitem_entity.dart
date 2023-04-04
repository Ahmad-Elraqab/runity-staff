// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'event_category_entitlement_subitem_entity.g.dart';

@CopyWith()
class EventCategoryEntitlementSubItemEntity extends Equatable {
  const EventCategoryEntitlementSubItemEntity({
    this.eventEntitlementId,
    this.eventEntitlementName,
    this.eventEntitlementPrice,
    this.availableQuantity,
    this.eventEntitlementQuantity,
  });

  final String? availableQuantity;
  final String? eventEntitlementId;
  final String? eventEntitlementName;
  final String? eventEntitlementPrice;
  final String? eventEntitlementQuantity;

  @override
  List<Object?> get props => [
        eventEntitlementId,
        eventEntitlementName,
        eventEntitlementPrice,
        availableQuantity,
        eventEntitlementQuantity,
      ];
}

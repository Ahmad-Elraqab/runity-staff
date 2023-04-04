// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:event_app/domain/entities/event_detail_entity/event_category_entitlement_entity.dart';

part 'event_category_entity.g.dart';

@CopyWith()
class EventCategoryEntity extends Equatable {
  const EventCategoryEntity({
    this.createdDatetime,
    this.eventCategoryCurrency,
    this.eventCategoryEntitlements,
    this.eventCategoryId,
    this.eventCategoryName,
    this.eventCategoryPrice,
    this.eventId,
    this.eventCategoryType,
  });

  final String? eventCategoryId;
  final String? eventId;
  final String? eventCategoryName;
  final String? eventCategoryPrice;
  final String? eventCategoryCurrency;
  final String? createdDatetime;
  final List<EventCategoryEntitlementEntity>? eventCategoryEntitlements;
  final List<String>? eventCategoryType;

  @override
  List<Object?> get props => [
        createdDatetime,
        eventCategoryType,
        eventCategoryCurrency,
        eventCategoryEntitlements,
        eventCategoryId,
        eventCategoryName,
        eventCategoryPrice,
        eventId,
      ];
}

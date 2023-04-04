// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:event_app/domain/entities/event_detail_entity/event_category_entity.dart';
import 'package:event_app/domain/entities/event_entity/event_entity.dart';
import 'package:equatable/equatable.dart';

part 'event_detail_entity.g.dart';

@CopyWith()
class EventDetailEntity extends Equatable {
  const EventDetailEntity({
    this.eventId,
    this.event,
    this.eventCategory,
    this.eventCategoryType,
    this.maxPrice,
    this.minPrice,
    this.vendorEmail,
    this.vendorImageUrl,
    this.vendorName,
    this.vendorPhone,
    this.vendorPhoneCountrycode,
    this.vendorWebsite,
  });

  final EventEntity? event;
  final String? eventId;
  final String? vendorName;
  final String? vendorPhoneCountrycode;
  final String? vendorPhone;
  final String? vendorEmail;
  final String? vendorWebsite;
  final String? vendorImageUrl;
  final String? minPrice;
  final String? maxPrice;
  final List<String>? eventCategoryType;
  final List<EventCategoryEntity>? eventCategory;

  @override
  List<Object?> get props => [
        eventId,
        event,
        eventCategory,
        eventCategoryType,
        maxPrice,
        minPrice,
        vendorEmail,
        vendorImageUrl,
        vendorName,
        vendorPhone,
        vendorPhoneCountrycode,
        vendorWebsite,
      ];
}

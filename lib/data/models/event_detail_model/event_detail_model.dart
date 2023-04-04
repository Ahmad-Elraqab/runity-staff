// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:event_app/data/models/event_detail_model/event_category_model.dart';
import 'package:event_app/data/models/event_model/event_model.dart';
import 'package:event_app/domain/entities/event_detail_entity/event_detail_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'event_detail_model.g.dart';

@CopyWith()
@JsonSerializable()
class EventDetailModel extends Equatable {
  const EventDetailModel({
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

  final EventModel? event;
  @JsonKey(name: 'event_id')
  final String? eventId;
  @JsonKey(name: 'vendor_name')
  final String? vendorName;
  @JsonKey(name: 'vendor_phone_countrycode')
  final String? vendorPhoneCountrycode;
  @JsonKey(name: 'vendor_phone')
  final String? vendorPhone;
  @JsonKey(name: 'vendor_email')
  final String? vendorEmail;
  @JsonKey(name: 'vendor_website')
  final String? vendorWebsite;
  @JsonKey(name: 'vendor_image_url')
  final String? vendorImageUrl;
  @JsonKey(name: 'min_price')
  final String? minPrice;
  @JsonKey(name: 'max_price')
  final String? maxPrice;
  @JsonKey(name: 'event_category_type')
  final List<String>? eventCategoryType;
  @JsonKey(name: 'event_category')
  final List<EventCategoryModel>? eventCategory;

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

  factory EventDetailModel.fromJson(Map<String, dynamic> json) {
    return _$EventDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EventDetailModelToJson(this);

  EventDetailEntity toEntity() => EventDetailEntity(
        eventId: eventId,
        event: event!.toEntity(),
        eventCategory: eventCategory!.map((e) => e.toEntity()).toList(),
        eventCategoryType: eventCategoryType,
        maxPrice: maxPrice,
        minPrice: minPrice,
        vendorEmail: vendorEmail,
        vendorImageUrl: vendorImageUrl,
        vendorName: vendorName,
        vendorPhone: vendorPhone,
        vendorPhoneCountrycode: vendorPhoneCountrycode,
        vendorWebsite: vendorWebsite,
      );
}

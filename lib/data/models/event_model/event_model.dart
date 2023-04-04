// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:event_app/domain/entities/event_entity/event_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'event_model.g.dart';

@CopyWith()
@JsonSerializable()
class EventModel extends Equatable {
  const EventModel({
    this.eventId,
    this.eventType,
    this.eventName,
    this.eventCode,
    this.eventStartDatetime,
    this.eventEndDatetime,
    this.eventRegistrationStartDatetime,
    this.eventRegistrationEndDatetime,
    this.eventImageUrl,
    this.eventStreet,
    this.eventCity,
    this.eventPostcode,
    this.eventState,
    this.eventStatus,
    this.eventDescription,
    this.vendorId,
    this.createdDatetime,
    this.eventPhotos,
  });

  @JsonKey(name: 'event_id')
  final String? eventId;
  @JsonKey(name: 'event_type')
  final String? eventType;
  @JsonKey(name: 'event_name')
  final String? eventName;
  @JsonKey(name: 'event_code')
  final String? eventCode;
  @JsonKey(name: 'event_start_datetime')
  final String? eventStartDatetime;
  @JsonKey(name: 'event_end_datetime')
  final String? eventEndDatetime;
  @JsonKey(name: 'event_registration_start_datetime')
  final String? eventRegistrationStartDatetime;
  @JsonKey(name: 'event_registration_end_datetime')
  final String? eventRegistrationEndDatetime;
  @JsonKey(name: 'event_image_url')
  final String? eventImageUrl;
  @JsonKey(name: 'event_street')
  final String? eventStreet;
  @JsonKey(name: 'event_city')
  final String? eventCity;
  @JsonKey(name: 'event_postcode')
  final String? eventPostcode;
  @JsonKey(name: 'event_state')
  final String? eventState;
  @JsonKey(name: 'event_status')
  final String? eventStatus;
  @JsonKey(name: 'event_description')
  final String? eventDescription;
  @JsonKey(name: 'vendor_id')
  final String? vendorId;
  @JsonKey(name: 'created_datetime')
  final String? createdDatetime;
  @JsonKey(name: 'event_photos')
  final dynamic eventPhotos;

  @override
  List<Object?> get props => [
        eventId,
        eventType,
        eventName,
        eventCode,
        eventStartDatetime,
        eventEndDatetime,
        eventRegistrationStartDatetime,
        eventRegistrationEndDatetime,
        eventImageUrl,
        eventStreet,
        eventCity,
        eventPostcode,
        eventState,
        eventStatus,
        eventDescription,
        vendorId,
        createdDatetime,
        eventPhotos,
      ];

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);
  Map<String, dynamic> toJson() => _$EventModelToJson(this);

  EventEntity toEntity() => EventEntity(
        eventId: eventId,
        eventType: eventType,
        eventName: eventName,
        eventCode: eventCode,
        eventStartDatetime: eventStartDatetime,
        eventEndDatetime: eventEndDatetime,
        eventRegistrationStartDatetime: eventRegistrationStartDatetime,
        eventRegistrationEndDatetime: eventRegistrationEndDatetime,
        eventImageUrl: eventImageUrl,
        eventStreet: eventStreet,
        eventCity: eventCity,
        eventPostcode: eventPostcode,
        eventState: eventState,
        eventStatus: eventStatus,
        eventDescription: eventDescription,
        vendorId: vendorId,
        createdDatetime: createdDatetime,
        eventPhotos: eventPhotos,
      );
}

// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'event_entity.g.dart';

@CopyWith()
class EventEntity extends Equatable {
  const EventEntity({
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

  final String? eventId;
  final String? eventType;
  final String? eventName;
  final String? eventCode;
  final String? eventStartDatetime;
  final String? eventEndDatetime;
  final String? eventRegistrationStartDatetime;
  final String? eventRegistrationEndDatetime;
  final String? eventImageUrl;
  final String? eventStreet;
  final String? eventCity;
  final String? eventPostcode;
  final String? eventState;
  final String? eventStatus;
  final String? eventDescription;
  final String? vendorId;
  final String? createdDatetime;
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
}

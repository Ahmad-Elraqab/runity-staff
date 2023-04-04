// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:event_app/domain/entities/participant_entity/participant_item_entity.dart';

part 'participant_entity.g.dart';

@CopyWith()
class ParticipantEntity extends Equatable {
  const ParticipantEntity({
    this.eventParticipantId,
    this.participantUniqueKey,
    this.eventId,
    this.eventCategoryId,
    this.bookingId,
    this.paymentId,
    this.userToken,
    this.userName,
    this.userPhoneCountry,
    this.userPhone,
    this.userEmail,
    this.userIc,
    this.collectedDatetime,
    this.checkinDatetime,
    this.emergencyContactName,
    this.emergencyContactPhoneCountry,
    this.emergencyContactPhone,
    this.emergencyContactRelationship,
    this.createdDatetime,
    this.eventCategoryName,
    this.items,
    this.eventCategoryCurrency,
    this.eventCategoryentitements,
  });

  final String? eventParticipantId;
  final String? participantUniqueKey;
  final String? eventId;
  final String? eventCategoryId;
  final String? bookingId;
  final String? paymentId;
  final String? userToken;
  final String? userName;
  final String? userPhoneCountry;
  final String? userPhone;
  final String? userEmail;
  final String? userIc;
  final String? collectedDatetime;
  final String? checkinDatetime;
  final String? emergencyContactName;
  final String? emergencyContactPhoneCountry;
  final String? emergencyContactPhone;
  final String? emergencyContactRelationship;
  final String? createdDatetime;
  final String? eventCategoryName;
  final List<ParticipantItemEntity>? items;
  final String? eventCategoryCurrency;
  final String? eventCategoryentitements;

  @override
  List<Object?> get props => [
        eventParticipantId,
        participantUniqueKey,
        eventId,
        eventCategoryId,
        bookingId,
        paymentId,
        userToken,
        userName,
        userPhoneCountry,
        userPhone,
        userEmail,
        userIc,
        collectedDatetime,
        checkinDatetime,
        emergencyContactName,
        emergencyContactPhoneCountry,
        emergencyContactPhone,
        emergencyContactRelationship,
        createdDatetime,
        eventCategoryName,
        items,
        eventCategoryCurrency,
        eventCategoryentitements,
      ];
}

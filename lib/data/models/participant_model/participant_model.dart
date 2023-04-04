// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:event_app/data/models/participant_model/participant_item_model.dart';
import 'package:event_app/domain/entities/participant_entity/participant_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'participant_model.g.dart';

@CopyWith()
@JsonSerializable()
class ParticipantModel extends Equatable {
  const ParticipantModel({
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

  @JsonKey(name: 'event_participant_id')
  final String? eventParticipantId;
  @JsonKey(name: 'participant_unique_key')
  final String? participantUniqueKey;
  @JsonKey(name: 'event_id')
  final String? eventId;
  @JsonKey(name: 'event_category_id')
  final String? eventCategoryId;
  @JsonKey(name: 'booking_id')
  final String? bookingId;
  @JsonKey(name: 'payment_id')
  final String? paymentId;
  @JsonKey(name: 'user_token')
  final String? userToken;
  @JsonKey(name: 'user_name')
  final String? userName;
  @JsonKey(name: 'user_phone_country')
  final String? userPhoneCountry;
  @JsonKey(name: 'user_phone')
  final String? userPhone;
  @JsonKey(name: 'user_email')
  final String? userEmail;
  @JsonKey(name: 'user_ic')
  final String? userIc;
  @JsonKey(name: 'collected_datetime')
  final String? collectedDatetime;
  @JsonKey(name: 'checkin_datetime')
  final String? checkinDatetime;
  @JsonKey(name: 'emergency_contact_name')
  final String? emergencyContactName;
  @JsonKey(name: 'emergency_contact_phone_country')
  final String? emergencyContactPhoneCountry;
  @JsonKey(name: 'emergency_contact_phone')
  final String? emergencyContactPhone;
  @JsonKey(name: 'emergency_contact_relationship')
  final String? emergencyContactRelationship;
  @JsonKey(name: 'created_datetime')
  final String? createdDatetime;
  @JsonKey(name: 'event_category_name')
  final String? eventCategoryName;
  @JsonKey(name: 'items')
  final List<ParticipantItemModel>? items;
  @JsonKey(name: 'event_category_price')
  final String? eventCategoryCurrency;
  @JsonKey(name: 'event_category_currency')
  final String? eventCategoryentitements;
  @JsonKey(name: 'event_category_entitlements')
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

  factory ParticipantModel.fromJson(Map<String, dynamic> json) =>
      _$ParticipantModelFromJson(json);
  Map<String, dynamic> toJson() => _$ParticipantModelToJson(this);

  ParticipantEntity toEntity() => ParticipantEntity(
        eventParticipantId: eventParticipantId,
        participantUniqueKey: participantUniqueKey,
        eventId: eventId,
        eventCategoryId: eventCategoryId,
        bookingId: bookingId,
        paymentId: paymentId,
        userToken: userToken,
        userName: userName,
        userPhoneCountry: userPhoneCountry,
        userPhone: userPhone,
        userEmail: userEmail,
        userIc: userIc,
        collectedDatetime: collectedDatetime,
        checkinDatetime: checkinDatetime,
        emergencyContactName: emergencyContactName,
        emergencyContactPhoneCountry: emergencyContactPhoneCountry,
        emergencyContactPhone: emergencyContactPhone,
        emergencyContactRelationship: emergencyContactRelationship,
        createdDatetime: createdDatetime,
        eventCategoryName: eventCategoryName,
        items: items!.map((e) => e.toEntity()).toList(),
        eventCategoryCurrency: eventCategoryCurrency,
        eventCategoryentitements: eventCategoryentitements,
      );
}

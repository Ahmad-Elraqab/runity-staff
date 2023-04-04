// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:event_app/domain/entities/qr_response_entity/qr_response_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'qr_response_model.g.dart';

@CopyWith()
@JsonSerializable()
class QRResponseModel extends Equatable {
  const QRResponseModel({
    this.collectedDatetime,
    this.eventCategoryName,
    this.eventName,
    this.eventParticipantId,
    this.userEmail,
    this.userIc,
    this.checkInDatetime,
    this.userName,
    this.userPhone,
  });

  @JsonKey(name: 'user_name')
  final String? userName;
  @JsonKey(name: 'user_phone')
  final String? userPhone;
  @JsonKey(name: 'user_email')
  final String? userEmail;
  @JsonKey(name: 'user_ic')
  final String? userIc;
  @JsonKey(name: 'event_participant_id')
  final String? eventParticipantId;
  @JsonKey(name: 'event_name')
  final String? eventName;
  @JsonKey(name: 'event_category_name')
  final String? eventCategoryName;
  @JsonKey(name: 'collected_datetime')
  final String? collectedDatetime;
  @JsonKey(name: 'checkin_datetime')
  final String? checkInDatetime;

  @override
  List<Object?> get props => [
        userName,
        userPhone,
        userEmail,
        userIc,
        eventParticipantId,
        eventName,
        eventCategoryName,
        collectedDatetime,
        checkInDatetime,
      ];

  factory QRResponseModel.fromJson(Map<String, dynamic> json) =>
      _$QRResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$QRResponseModelToJson(this);

  QRResponseEntity toEntity() => QRResponseEntity(
        userName: userName,
        userPhone: userPhone,
        userEmail: userEmail,
        userIc: userIc,
        eventParticipantId: eventParticipantId,
        checkInDatetime: checkInDatetime,
        eventName: eventName,
        eventCategoryName: eventCategoryName,
        collectedDatetime: collectedDatetime,
      );
}

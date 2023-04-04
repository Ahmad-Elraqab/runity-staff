// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'qr_response_entity.g.dart';

@CopyWith()
class QRResponseEntity extends Equatable {
  const QRResponseEntity({
    this.collectedDatetime,
    this.eventCategoryName,
    this.eventName,
    this.eventParticipantId,
    this.userEmail,
    this.userIc,
    this.userName,
    this.userPhone,
    this.checkInDatetime,
  });

  final String? userName;
  final String? userPhone;
  final String? userEmail;
  final String? userIc;
  final String? eventParticipantId;
  final String? eventName;
  final String? eventCategoryName;
  final String? collectedDatetime;
  final String? checkInDatetime;

  @override
  List<Object?> get props => [
        userName,
        checkInDatetime,
        userPhone,
        userEmail,
        userIc,
        eventParticipantId,
        eventName,
        eventCategoryName,
        collectedDatetime,
      ];
}

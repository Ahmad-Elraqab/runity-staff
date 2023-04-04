// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:event_app/domain/entities/event_entity/event_entity.dart';
import 'package:event_app/domain/entities/participant_detail_entity/order_detail_entity.dart';
import 'package:event_app/domain/entities/participant_entity/participant_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'participant_detail_entity.g.dart';

@CopyWith()
@JsonSerializable()
class ParticipantDetailEntity extends Equatable {
  const ParticipantDetailEntity({
    this.orderDetail,
    this.eventParticipantId,
    this.addressId,
    this.buildingLevel,
    this.buildingName,
    this.buildingUnitNumber,
    this.city,
    this.customAddress,
    this.directAccess,
    this.distance,
    this.duration,
    this.fullAddress,
    this.lastUpdate,
    this.event,
    this.participant,
    this.lat,
    this.lng,
    this.paymentCollect,
    this.recipientName,
    this.recipientPhone,
    this.sequence,
    this.state,
    this.status,
    this.street,
    this.type,
    this.zip,
  });

  final ParticipantEntity? participant;
  final EventEntity? event;
  final String? eventParticipantId;
  final String? addressId;
  final String? type;
  final String? fullAddress;
  final String? customAddress;
  final String? buildingLevel;
  final String? buildingName;
  final String? buildingUnitNumber;
  final String? street;
  final String? zip;
  final String? city;
  final String? state;
  final String? sequence;
  final String? lat;
  final String? lng;
  final String? directAccess;
  final String? distance;
  final String? duration;
  final String? status;
  final String? lastUpdate;
  final String? recipientName;
  final String? recipientPhone;
  final String? paymentCollect;
  final OrderDetailEntity? orderDetail;

  @override
  List<Object?> get props => [
        eventParticipantId,
        addressId,
        buildingLevel,
        buildingName,
        orderDetail,
        participant,
        event,
        buildingUnitNumber,
        city,
        customAddress,
        directAccess,
        distance,
        duration,
        fullAddress,
        lastUpdate,
        lat,
        lng,
        paymentCollect,
        recipientName,
        recipientPhone,
        sequence,
        state,
        status,
        street,
        type,
        zip,
      ];
}

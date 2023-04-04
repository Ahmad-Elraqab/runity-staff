// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:event_app/data/models/event_model/event_model.dart';
import 'package:event_app/data/models/participant_detail_model/order_detail_model.dart';
import 'package:event_app/data/models/participant_model/participant_item_model.dart';
import 'package:event_app/data/models/participant_model/participant_model.dart';
import 'package:event_app/domain/entities/participant_detail_entity/participant_detail_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'participant_detail_model.g.dart';

@CopyWith()
@JsonSerializable()
class ParticipantDetailModel extends Equatable {
  const ParticipantDetailModel({
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

  final ParticipantModel? participant;
  final EventModel? event;
  @JsonKey(name: 'event_participant_id')
  final String? eventParticipantId;
  @JsonKey(name: 'address_id')
  final String? addressId;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'full_address')
  final String? fullAddress;
  @JsonKey(name: 'custom_address')
  final String? customAddress;
  @JsonKey(name: 'building_level')
  final String? buildingLevel;
  @JsonKey(name: 'building_name')
  final String? buildingName;
  @JsonKey(name: 'building_unit_number')
  final String? buildingUnitNumber;
  @JsonKey(name: 'street')
  final String? street;
  @JsonKey(name: 'zip')
  final String? zip;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'state')
  final String? state;
  @JsonKey(name: 'sequence')
  final String? sequence;
  @JsonKey(name: 'lat')
  final String? lat;
  @JsonKey(name: 'lng')
  final String? lng;
  @JsonKey(name: 'direct_access')
  final String? directAccess;
  @JsonKey(name: 'distance')
  final String? distance;
  @JsonKey(name: 'duration')
  final String? duration;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'last_update')
  final String? lastUpdate;
  @JsonKey(name: 'recipient_name')
  final String? recipientName;
  @JsonKey(name: 'recipient_phone')
  final String? recipientPhone;
  @JsonKey(name: 'payment_collect')
  final String? paymentCollect;
  @JsonKey(name: 'orderDetail')
  final OrderDetailModel? orderDetail;

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

  factory ParticipantDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ParticipantDetailModelFromJson(json);
  Map<String, dynamic> toJson() => _$ParticipantDetailModelToJson(this);

  ParticipantDetailEntity toEntity() => ParticipantDetailEntity(
        addressId: addressId,
        eventParticipantId: eventParticipantId,
        buildingLevel: buildingLevel,
        buildingName: buildingName,
        orderDetail: orderDetail!.toEntity(),
        participant: participant!.toEntity(),
        event: event!.toEntity(),
        buildingUnitNumber: buildingUnitNumber,
        city: city,
        customAddress: customAddress,
        directAccess: directAccess,
        distance: distance,
        duration: duration,
        fullAddress: fullAddress,
        lastUpdate: lastUpdate,
        lat: lat,
        lng: lng,
        paymentCollect: paymentCollect,
        recipientName: recipientName,
        recipientPhone: recipientPhone,
        sequence: sequence,
        state: state,
        status: status,
        street: street,
        type: type,
        zip: zip,
      );
}

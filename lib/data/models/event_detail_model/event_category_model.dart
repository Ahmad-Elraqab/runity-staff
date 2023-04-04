// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:event_app/data/models/event_detail_model/event_category_entitlement_model.dart';
import 'package:event_app/domain/entities/event_detail_entity/event_category_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'event_category_model.g.dart';

@CopyWith()
@JsonSerializable()
class EventCategoryModel extends Equatable {
  const EventCategoryModel({
    this.createdDatetime,
    this.eventCategoryCurrency,
    this.eventCategoryEntitlements,
    this.eventCategoryId,
    this.eventCategoryName,
    this.eventCategoryPrice,
    this.eventId,
    this.eventCategoryType,
  });

  @JsonKey(name: 'event_category_id')
  final String? eventCategoryId;
  @JsonKey(name: 'event_id')
  final String? eventId;
  @JsonKey(name: 'event_category_name')
  final String? eventCategoryName;
  @JsonKey(name: 'event_category_price')
  final String? eventCategoryPrice;
  @JsonKey(name: 'event_category_currency')
  final String? eventCategoryCurrency;
  @JsonKey(name: 'created_datetime')
  final String? createdDatetime;
  @JsonKey(name: 'event_category_entitlements')
  final List<EventCategoryEntitlementModel>? eventCategoryEntitlements;
  @JsonKey(name: 'event_category_type')
  final List<String>? eventCategoryType;

  @override
  List<Object?> get props => [
        createdDatetime,
        eventCategoryType,
        eventCategoryCurrency,
        eventCategoryEntitlements,
        eventCategoryId,
        eventCategoryName,
        eventCategoryPrice,
        eventId,
      ];

  factory EventCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$EventCategoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$EventCategoryModelToJson(this);

  EventCategoryEntity toEntity() => EventCategoryEntity(
        createdDatetime: createdDatetime,
        eventCategoryType: eventCategoryType,
        eventCategoryCurrency: eventCategoryCurrency,
        eventCategoryEntitlements:
            eventCategoryEntitlements!.map((e) => e.toEntity()).toList(),
        eventCategoryId: eventCategoryId,
        eventCategoryName: eventCategoryName,
        eventCategoryPrice: eventCategoryPrice,
        eventId: eventId,
      );
}

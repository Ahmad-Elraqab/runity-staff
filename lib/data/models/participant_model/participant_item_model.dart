// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:event_app/domain/entities/participant_entity/participant_item_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'participant_item_model.g.dart';

@CopyWith()
@JsonSerializable()
class ParticipantItemModel extends Equatable {
  const ParticipantItemModel({
    this.itemName,
    this.itemQuantity,
  });

  @JsonKey(name: 'item_name')
  final String? itemName;
  @JsonKey(name: 'item_quantity')
  final String? itemQuantity;

  @override
  List<Object?> get props => [
        itemName,
        itemQuantity,
      ];

  factory ParticipantItemModel.fromJson(Map<String, dynamic> json) =>
      _$ParticipantItemModelFromJson(json);
  Map<String, dynamic> toJson() => _$ParticipantItemModelToJson(this);

  ParticipantItemEntity toEntity() =>
      ParticipantItemEntity(itemName: itemName, itemQuantity: itemQuantity);
}

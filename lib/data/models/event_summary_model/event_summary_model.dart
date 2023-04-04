// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'event_summary_model.g.dart';

@CopyWith()
@JsonSerializable()
class EventSummaryModel extends Equatable {
  const EventSummaryModel({
    this.totalCheckedIn,
    this.totalCollected,
    this.totalParticipant,
  });

  @JsonKey(name: 'totalParticipant')
  final String? totalParticipant;
  @JsonKey(name: 'totalCollected')
  final String? totalCollected;
  @JsonKey(name: 'totalCheckedIn')
  final String? totalCheckedIn;

  @override
  List<Object?> get props => [
        totalCheckedIn,
        totalCollected,
        totalParticipant,
      ];

  factory EventSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$EventSummaryModelFromJson(json);
  Map<String, dynamic> toJson() => _$EventSummaryModelToJson(this);
}

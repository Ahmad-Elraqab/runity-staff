// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'event_summary_entity.g.dart';

@CopyWith()
class EventSummaryEntity extends Equatable {
  const EventSummaryEntity({
    this.totalCheckedIn,
    this.totalCollected,
    this.totalParticipant,
  });

  final String? totalParticipant;
  final String? totalCollected;
  final String? totalCheckedIn;

  @override
  List<Object?> get props => [
        totalCheckedIn,
        totalCollected,
        totalParticipant,
      ];
}

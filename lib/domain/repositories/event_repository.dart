import 'package:event_app/domain/entities/event_detail_entity/event_detail_entity.dart';
import 'package:event_app/domain/entities/event_entity/event_entity.dart';
import 'package:event_app/domain/entities/event_summary_entity/event_summary_entity.dart';

abstract class EventRepository {
  Future<(List<EventEntity>, List<EventEntity>)> getAllEntities();
  Future<EventSummaryEntity> getEventSummaryById({String? id});
  Future<EventDetailEntity> getEventDetail({String? eventId});
}

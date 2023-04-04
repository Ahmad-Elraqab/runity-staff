import 'package:event_app/domain/entities/event_detail_entity/event_detail_entity.dart';
import 'package:event_app/domain/entities/event_entity/event_entity.dart';
import 'package:event_app/domain/entities/event_summary_entity/event_summary_entity.dart';
import 'package:event_app/domain/repositories/event_repository.dart';

class GetAllEventsUseCase {
  final EventRepository repository;

  GetAllEventsUseCase({required this.repository});

  Future<(List<EventEntity>, List<EventEntity>)> execute() async {
    try {
      return repository.getAllEntities();
    } catch (e) {
      rethrow;
    }
  }
}

class GetEventSummaryUseCase {
  final EventRepository repository;

  GetEventSummaryUseCase({required this.repository});

  Future<EventSummaryEntity> execute({String? id}) async {
    try {
      return repository.getEventSummaryById(id: id);
    } catch (e) {
      rethrow;
    }
  }
}

class GetEventDetailUseCase {
  final EventRepository repository;

  GetEventDetailUseCase({required this.repository});

  Future<EventDetailEntity> execute({String? eventId}) async {
    try {
      return repository.getEventDetail(eventId: eventId);
    } catch (e) {
      rethrow;
    }
  }
}

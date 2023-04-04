import 'package:event_app/domain/entities/participant_detail_entity/participant_detail_entity.dart';
import 'package:event_app/domain/entities/participant_entity/participant_entity.dart';
import 'package:event_app/domain/repositories/participant_repository.dart';

class GetEventParticipantsUseCase {
  final ParticipantRepository repository;

  GetEventParticipantsUseCase({required this.repository});

  Future<List<ParticipantEntity>>? execute({String? eventId}) async {
    try {
      return await repository.getEventParticipants(eventId: eventId)!;
    } catch (e) {
      rethrow;
    }
  }
}

class GetEventParticipantDetailUseCase {
  final ParticipantRepository repository;

  GetEventParticipantDetailUseCase({required this.repository});

  Future<ParticipantDetailEntity>? execute({String? participantId}) async {
    try {
      final data = await repository.getParticipantDetail(
        participantId: participantId,
      );
      return data;
    } catch (e) {
      rethrow;
    }
  }
}

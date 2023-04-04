import 'package:event_app/domain/entities/participant_detail_entity/participant_detail_entity.dart';
import 'package:event_app/domain/entities/participant_entity/participant_entity.dart';

abstract class ParticipantRepository {
  Future<List<ParticipantEntity>>? getEventParticipants({String? eventId});
  Future<ParticipantDetailEntity> getParticipantDetail({String? participantId});
}

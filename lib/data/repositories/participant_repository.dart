import 'dart:convert';
import 'package:event_app/base/app/config/global_keys.dart';
import 'package:event_app/data/models/participant_detail_model/participant_detail_model.dart';
import 'package:event_app/data/models/participant_model/participant_model.dart';
import 'package:event_app/data/repositories/rest_repository.dart';
import 'package:event_app/domain/entities/participant_detail_entity/participant_detail_entity.dart';
import 'package:event_app/domain/entities/participant_entity/participant_entity.dart';
import 'package:event_app/domain/repositories/participant_repository.dart';

class ParticipantRepositoryImpl implements ParticipantRepository {
  RestService restService;

  ParticipantRepositoryImpl({required this.restService});
  @override
  Future<List<ParticipantEntity>>? getEventParticipants(
      {String? eventId}) async {
    try {
      final response = await restService.dio.post(
        'Staff/event/participantList',
        data: {
          'apiKey': GlobalKeys.appApikey,
          'data': {
            'eventId': eventId,
            'collectedItem': '',
            'checkedIn': '',
          },
        },
      );

      final listParticipantModel =
          (jsonDecode(response.data)['response']['participantList'] as List)
              .map((e) => ParticipantModel.fromJson(e))
              .toList();

      final listParticipantEntity =
          listParticipantModel.map((e) => e.toEntity()).toList();

      return listParticipantEntity;
    } catch (e) {
      rethrow;
    }
  }

  Future<ParticipantDetailEntity> getParticipantDetail(
      {String? participantId}) async {
    try {
      final response = await restService.dio.post(
        'Staff/event/participantDetail',
        data: {
          'apiKey': GlobalKeys.appApikey,
          'data': {
            'participantId': participantId,
          },
        },
      );

      final participantDetailModel = ParticipantDetailModel.fromJson(
          jsonDecode(response.data)['response']['participant']);

      return participantDetailModel.toEntity();
    } catch (e) {
      rethrow;
    }
  }
}

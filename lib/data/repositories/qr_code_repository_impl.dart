import 'dart:convert';

import 'package:event_app/base/app/config/global_keys.dart';
import 'package:event_app/base/interceptors/custom_dio_errors.dart';
import 'package:event_app/data/models/qr_reponse_model/qr_response_model.dart';
import 'package:event_app/data/repositories/rest_repository.dart';
import 'package:event_app/domain/entities/qr_response_entity/qr_response_entity.dart';
import 'package:event_app/domain/error/exceptions.dart';
import 'package:event_app/domain/repositories/qr_code_repository.dart';

class QRCodeRepositoryImpl implements QRCodeRepository {
  RestService restService;

  QRCodeRepositoryImpl({required this.restService});

  @override
  Future<(QRResponseEntity, bool)> checkInConsumer(
      {String? eventId, String? participantUniqueKey}) async {
    try {
      final response = await restService.dio.post(
        'Staff/event/consumerCheckIn',
        data: {
          'apiKey': GlobalKeys.appApikey,
          'data': {
            'eventId': eventId,
            'participantUniqueKey': participantUniqueKey,
          }
        },
      );

      final data =
          QRResponseModel.fromJson(json.decode(response.data)['response']);
      return (data.toEntity(), true);
    } catch (e) {
      try {
        final data = QRResponseModel.fromJson(
            json.decode((e as RestException).response!.data)['response']);
        return (data.toEntity(), false);
      } catch (e) {
        ErrorUIAction.excute('invalid QR Code!');
        rethrow;
      }
    }
  }

  @override
  Future<(QRResponseEntity, bool)> collectItem(
      {String? eventId, String? participantUniqueKey}) async {
    try {
      final response = await restService.dio.post(
        'Staff/event/itemCollection',
        data: {
          'apiKey': GlobalKeys.appApikey,
          'data': {
            'eventId': eventId,
            'participantUniqueKey': participantUniqueKey,
          }
        },
      );

      final data =
          QRResponseModel.fromJson(json.decode(response.data)['response']);
      return (data.toEntity(), true);
    } catch (e) {
      try {
        final data = QRResponseModel.fromJson(
            json.decode((e as RestException).response!.data)['response']);
        return (data.toEntity(), false);
      } catch (e) {
        ErrorUIAction.excute('invalid QR Code!');
        rethrow;
      }
    }
  }
}

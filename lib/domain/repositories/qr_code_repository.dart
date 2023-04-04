import 'package:event_app/domain/entities/qr_response_entity/qr_response_entity.dart';

abstract class QRCodeRepository {
  Future<(QRResponseEntity, bool)> checkInConsumer(
      {String? eventId, String? participantUniqueKey});
  Future<(QRResponseEntity, bool)> collectItem(
      {String? eventId, String? participantUniqueKey});
}

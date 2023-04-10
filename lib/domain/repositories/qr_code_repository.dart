// import 'package:event_app/domain/entities/qr_response_entity/qr_response_entity.dart';

abstract class QRCodeRepository {
  Future<Map<String, dynamic>> checkInConsumer(
      {String? eventId, String? participantUniqueKey});
  Future<Map<String, dynamic>> collectItem(
      {String? eventId, String? participantUniqueKey});
}

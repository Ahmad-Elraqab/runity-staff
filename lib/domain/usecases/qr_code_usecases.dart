import 'package:event_app/domain/entities/qr_response_entity/qr_response_entity.dart';
import 'package:event_app/domain/repositories/qr_code_repository.dart';

class CheckInQRCodeUseCase {
  final QRCodeRepository repository;

  CheckInQRCodeUseCase({required this.repository});

  Future<(QRResponseEntity, bool)> execute(
      {String? eventId, String? participantUniqueKey}) async {
    final data = await repository.checkInConsumer(
      eventId: eventId,
      participantUniqueKey: participantUniqueKey,
    );
    return data;
  }
}

class CollectItemQRCodeUseCase {
  final QRCodeRepository repository;

  CollectItemQRCodeUseCase({required this.repository});

  Future<(QRResponseEntity, bool)> execute(
      {String? eventId, String? participantUniqueKey}) async {
    final data = await repository.collectItem(
      participantUniqueKey: participantUniqueKey,
      eventId: eventId,
    );
    return data;
  }
}

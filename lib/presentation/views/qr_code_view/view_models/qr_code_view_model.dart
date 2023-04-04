import 'package:auto_route/auto_route.dart';
import 'package:event_app/base/routers/router.gr.dart';
import 'package:event_app/domain/entities/qr_response_entity/qr_response_entity.dart';
import 'package:event_app/domain/usecases/qr_code_usecases.dart';
import 'package:event_app/presentation/views/qr_code_view/view_models/qr_code_widget_view_model.dart';
import 'package:flutter/cupertino.dart';

class QRCodeViewModel extends ChangeNotifier {
  QRCodeViewModel({
    required this.qrCodeWidgetViewModel,
    required this.checkInQRCodeUseCase,
    required this.collectItemQRCodeUseCase,
    required this.eventId,
  });

  CollectItemQRCodeUseCase collectItemQRCodeUseCase;
  CheckInQRCodeUseCase checkInQRCodeUseCase;
  QrCodeWidgetViewModel qrCodeWidgetViewModel;

  String eventId;

  Future<void> scanQRCode({BuildContext? context}) async {
    try {
      if (qrCodeWidgetViewModel.isFirstTab) {
        await checkInQRCode(context);
      } else {
        await collectItemsQRCode(context);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> checkInQRCode(BuildContext? context) async {
    QRResponseEntity? data;
    bool? isSuccess;

    (data, isSuccess) = await checkInQRCodeUseCase.execute(
      eventId: eventId,
      participantUniqueKey: qrCodeWidgetViewModel.barcode.code,
    );

    navigate(context!, data, QRResponseType.CheckIn, isSuccess);
  }

  Future<void> collectItemsQRCode(BuildContext? context) async {
    QRResponseEntity? data;
    bool? isSuccess;

    (data, isSuccess) = await collectItemQRCodeUseCase.execute(
      participantUniqueKey: qrCodeWidgetViewModel.barcode.code,
      eventId: eventId,
    );

    navigate(context!, data, QRResponseType.Collection, isSuccess);
  }

  void navigate(BuildContext context, QRResponseEntity res, QRResponseType type,
      bool isSuccess) {
    context.router.replace(ResponseRouter(
      isSuccess: isSuccess,
      type: type,
      checkInDatetime: res.checkInDatetime,
      collectedDatetime: res.collectedDatetime,
      eventCategoryName: res.eventCategoryName,
      eventName: res.eventName,
      eventParticipantId: res.eventParticipantId,
      userIc: res.userIc,
      userEmail: res.userEmail,
      userPhone: res.userPhone,
      userName: res.userName,
    ));
  }
}

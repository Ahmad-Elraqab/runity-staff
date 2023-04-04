import 'package:event_app/domain/entities/qr_response_entity/qr_response_entity.dart';
import 'package:event_app/presentation/views/qr_code_view/view_models/qr_code_widget_view_model.dart';
import 'package:flutter/cupertino.dart';

class QRCodeResponseWidgetViewModel extends ChangeNotifier {
  QRCodeResponseWidgetViewModel({
    required QRResponseEntity this.qRResponse,
    required QRResponseType this.qRResponseType,
    required bool this.isSuccess,
  });

  QRResponseEntity? qRResponse;
  QRResponseType? qRResponseType;
  bool? isSuccess;

  bool? _loading = true;

  bool? get loading => _loading;

  set loading(bool? value) {
    _loading = value;
    notifyListeners();
  }
}

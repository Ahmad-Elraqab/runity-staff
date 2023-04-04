import 'package:event_app/domain/entities/qr_response_entity/qr_response_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

// ignore: constant_identifier_names
enum QRResponseType { Collection, CheckIn }

class QrCodeWidgetViewModel extends ChangeNotifier {
  BuildContext context;
  QrCodeWidgetViewModel({required this.context});
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  bool _scanned = false;

  bool get scanned => _scanned;

  set scanned(bool value) {
    _scanned = value;
    notifyListeners();
  }

  Barcode? _barcode;

  Barcode get barcode => _barcode!;

  set barcode(Barcode value) {
    _barcode = value;
  }

  bool _isFirstTab = true;

  bool get isFirstTab => _isFirstTab;

  set isFirstTab(bool isFirstTab) {
    _isFirstTab = isFirstTab;
    notifyListeners();
  }

  set isLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }
}

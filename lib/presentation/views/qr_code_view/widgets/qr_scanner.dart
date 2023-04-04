import 'dart:developer';
import 'dart:io';
import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/base/routers/router.gr.dart';
import 'package:event_app/presentation/views/qr_code_view/view_models/qr_code_view_model.dart';
import 'package:event_app/presentation/views/qr_code_view/view_models/qr_code_widget_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRViewExample extends StatefulWidget {
  const QRViewExample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRViewExampleState();
}

class _QRViewExampleState extends State<QRViewExample> {
  Barcode? result;
  QRViewController? controller;
  bool isScanned = false;

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return _buildQrView(context);
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 360.0
        : 360.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return Column(
      children: [
        const SizedBox(
          height: 38.0,
        ),
        Expanded(
          flex: 1,
          child: QRView(
            overlayMargin: EdgeInsets.zero,
            key: qrKey,
            onQRViewCreated: _onQRViewCreated,
            overlay: QrScannerOverlayShape(
              borderColor: context.watch<QrCodeWidgetViewModel>().scanned
                  ? lightGreen
                  : WhiteColor,
              overlayColor: PrimaryColor,
              borderRadius: 40,
              borderLength: 180,
              borderWidth: 10,
              cutOutSize: scanArea,
            ),
            onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
          ),
        ),
        const Expanded(flex: 1, child: SizedBox())
      ],
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
        // isScanned = true;
        controller.stopCamera();
        context.read<QrCodeWidgetViewModel>().scanned = true;
        context.read<QrCodeWidgetViewModel>().barcode = scanData;
        context.read<QRCodeViewModel>().scanQRCode(context: context);
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}

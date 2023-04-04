import 'package:auto_route/auto_route.dart';
import 'package:event_app/presentation/views/qr_code_view/children/qr_response_view/di/qr_code_response_dependencies.dart';
import 'package:event_app/presentation/views/qr_code_view/view_models/qr_code_widget_view_model.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class QRCodeResponseWrapper extends StatefulWidget {
  const QRCodeResponseWrapper({
    Key? key,
    @QueryParam('userName') this.userName,
    @QueryParam('userPhone') this.userPhone,
    @QueryParam('userEmail') this.userEmail,
    @QueryParam('userIc') this.userIc,
    @QueryParam('eventParticipantId') this.eventParticipantId,
    @QueryParam('eventName') this.eventName,
    @QueryParam('eventCategoryName') this.eventCategoryName,
    @QueryParam('collectedDatetime') this.collectedDatetime,
    @QueryParam('checkInDatetime') this.checkInDatetime,
    @QueryParam('type') this.type,
    @QueryParam('isSuccess') this.isSuccess,
  }) : super(key: key);

  final String? userName;
  final String? userPhone;
  final String? userEmail;
  final String? userIc;
  final String? eventParticipantId;
  final String? eventName;
  final String? eventCategoryName;
  final String? checkInDatetime;
  final String? collectedDatetime;
  final QRResponseType? type;
  final bool? isSuccess;
  @override
  State<QRCodeResponseWrapper> createState() => _QRCodeResponseWrapperState();
}

class _QRCodeResponseWrapperState extends State<QRCodeResponseWrapper> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: QRCodeResponseDependencies.of(
        context,
        userName: widget.userName,
        userPhone: widget.userPhone,
        userEmail: widget.userEmail,
        userIc: widget.userIc,
        checkInDatetime: widget.checkInDatetime,
        eventParticipantId: widget.eventParticipantId,
        eventName: widget.eventName,
        eventCategoryName: widget.eventCategoryName,
        collectedDatetime: widget.collectedDatetime,
        qrResponseType: widget.type,
        isSuccess: widget.isSuccess,
      ).providers,
      builder: (context, child) => _init(context),
    );
  }

  AutoRouter _init(BuildContext context) {
    return const AutoRouter();
  }
}

import 'package:event_app/data/repositories/participant_repository.dart';
import 'package:event_app/domain/entities/qr_response_entity/qr_response_entity.dart';
import 'package:event_app/domain/repositories/participant_repository.dart';
import 'package:event_app/domain/usecases/participant_usecases.dart';
import 'package:event_app/presentation/views/qr_code_view/children/qr_response_view/view_models/qr_code_response_view_model.dart';
import 'package:event_app/presentation/views/qr_code_view/children/qr_response_view/view_models/qr_code_response_widget_view_model.dart';
import 'package:event_app/presentation/views/qr_code_view/view_models/qr_code_widget_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class QRCodeResponseDependencies {
  QRCodeResponseDependencies(
    this.context, {
    this.collectedDatetime,
    this.eventCategoryName,
    this.eventName,
    this.eventParticipantId,
    this.userEmail,
    this.userIc,
    this.userName,
    this.userPhone,
    this.isSuccess,
    this.checkInDatetime,
    this.qrResponseType,
  });

  factory QRCodeResponseDependencies.of(
    BuildContext context, {
    String? userName,
    String? userPhone,
    String? userEmail,
    String? userIc,
    String? eventParticipantId,
    String? eventName,
    String? eventCategoryName,
    String? collectedDatetime,
    String? checkInDatetime,
    bool? isSuccess,
    QRResponseType? qrResponseType,
  }) =>
      QRCodeResponseDependencies(
        context,
        userName: userName,
        userPhone: userPhone,
        userEmail: userEmail,
        userIc: userIc,
        eventParticipantId: eventParticipantId,
        eventName: eventName,
        eventCategoryName: eventCategoryName,
        collectedDatetime: collectedDatetime,
        isSuccess: isSuccess,
        checkInDatetime: checkInDatetime,
        qrResponseType: qrResponseType,
      );

  final String? userName;
  final String? userPhone;
  final String? userEmail;
  final String? userIc;
  final String? eventParticipantId;
  final String? eventName;
  final String? eventCategoryName;
  final String? collectedDatetime;
  final String? checkInDatetime;
  final bool? isSuccess;
  final QRResponseType? qrResponseType;

  final BuildContext context;

  late List<SingleChildWidget> providers = [
    ..._repositories,
    ..._usecases,
    ..._viewmodels,
  ];

  late final List<Provider> _repositories = [
    Provider<ParticipantRepository>(
      create: (context) => ParticipantRepositoryImpl(
        restService: context.read(),
      ),
    )
  ];

  late final List<Provider> _usecases = [
    Provider<GetEventParticipantDetailUseCase>(
      create: (context) => GetEventParticipantDetailUseCase(
        repository: context.read(),
      ),
    )
  ];

  late final List<ChangeNotifierProvider> _viewmodels = [
    ChangeNotifierProvider<QRCodeResponseWidgetViewModel>(
      create: (context) => QRCodeResponseWidgetViewModel(
        qRResponse: QRResponseEntity(
          collectedDatetime: collectedDatetime,
          eventCategoryName: eventCategoryName,
          eventName: eventName,
          userEmail: userEmail,
          userName: userName,
          checkInDatetime: checkInDatetime,
          eventParticipantId: eventParticipantId,
          userIc: userIc,
          userPhone: userPhone,
        ),
        qRResponseType: qrResponseType!,
        isSuccess: isSuccess!,
      ),
    ),
    ChangeNotifierProvider<QRCodeResponseViewModel>(
      create: (context) => QRCodeResponseViewModel(
        getEventParticipantDetailUseCase: context.read(),
        qRCodeResponseWidgetViewModel: context.read(),
      )..getParticipantDetail(),
    ),
  ];
}

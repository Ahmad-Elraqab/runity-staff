import 'package:event_app/data/repositories/qr_code_repository_impl.dart';
import 'package:event_app/domain/repositories/qr_code_repository.dart';
import 'package:event_app/domain/usecases/qr_code_usecases.dart';
import 'package:event_app/presentation/views/qr_code_view/view_models/qr_code_view_model.dart';
import 'package:event_app/presentation/views/qr_code_view/view_models/qr_code_widget_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class QRCodeDependencies {
  QRCodeDependencies(this.context, this.id);

  factory QRCodeDependencies.of(BuildContext context, {String? id}) =>
      QRCodeDependencies(context, id!);

  final String id;
  final BuildContext context;

  late List<SingleChildWidget> providers = [
    ..._repositories,
    ..._usecases,
    ..._viewmodels,
  ];

  late final List<Provider> _repositories = [
    Provider<QRCodeRepository>(
      create: (context) => QRCodeRepositoryImpl(
        restService: context.read(),
      ),
    )
  ];

  late final List<Provider> _usecases = [
    Provider<CheckInQRCodeUseCase>(
      create: (context) => CheckInQRCodeUseCase(
        repository: context.read(),
      ),
    ),
    Provider<CollectItemQRCodeUseCase>(
      create: (context) => CollectItemQRCodeUseCase(
        repository: context.read(),
      ),
    ),
  ];

  late final List<ChangeNotifierProvider> _viewmodels = [
    ChangeNotifierProvider<QrCodeWidgetViewModel>(
      create: (context) => QrCodeWidgetViewModel(context: context),
    ),
    ChangeNotifierProvider<QRCodeViewModel>(
      create: (context) => QRCodeViewModel(
        eventId: id,
        qrCodeWidgetViewModel: context.read(),
        checkInQRCodeUseCase: context.read(),
        collectItemQRCodeUseCase: context.read(),
      ),
    ),
  ];
}

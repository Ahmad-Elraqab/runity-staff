import 'package:auto_route/auto_route.dart';
import 'package:event_app/presentation/views/qr_code_view/di/qr_code_dependencies.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class QRCodeWrapper extends StatefulWidget {
  const QRCodeWrapper({Key? key, @QueryParam('id') this.id}) : super(key: key);

  final String? id;

  @override
  State<QRCodeWrapper> createState() => _QRCodeWrapperState();
}

class _QRCodeWrapperState extends State<QRCodeWrapper> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: QRCodeDependencies.of(context, id: widget.id!).providers,
      builder: (context, child) => _init(context),
    );
  }

  AutoRouter _init(BuildContext context) {
    return const AutoRouter();
  }
}

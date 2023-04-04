import 'package:event_app/presentation/views/qr_code_view/widgets/qr_scanner.dart';
import 'package:flutter/material.dart';

class TabBarViewBody extends StatefulWidget {
  const TabBarViewBody({
    Key? key,
  }) : super(key: key);

  @override
  State<TabBarViewBody> createState() => _TabBarViewBodyState();
}

class _TabBarViewBodyState extends State<TabBarViewBody> {
  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: QRViewExample(),
    );
  }
}

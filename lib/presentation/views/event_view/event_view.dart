import 'package:event_app/presentation/views/event_view/view_models/event_view_model.dart';
import 'package:event_app/presentation/views/event_view/view_models/event_widget_view_model.dart';
import 'package:event_app/presentation/views/event_view/widgets/event_shimmer.dart';
import 'package:event_app/presentation/views/event_view/widgets/tab_bar_header.dart';
import 'package:event_app/presentation/views/event_view/widgets/tab_bar_view_body.dart';
import 'package:event_app/presentation/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:event_app/base/app/config/app_constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EventView extends StatefulWidget {
  const EventView({super.key});

  @override
  State<EventView> createState() => _EventViewState();
}

class _EventViewState extends State<EventView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<EventViewModel>().getAllEvents();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Consumer2<EventWidgetViewModel, EventViewModel>(
        builder: (context, value, value2, child) => Container(
          color: PrimaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                top: 60.0,
                child: InkWell(
                  onTap: () => Scaffold.of(context).openDrawer(),
                  child: const Image(
                    height: 24.0,
                    image: AssetImage('assets/images/menu.png'),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 54.0,
                  ),
                  Text(
                    AppLocalizations.of(context)!.events,
                    style: GoogleFonts.montserrat(
                      color: WhiteColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 36.0,
                  ),
                  const TabBarHeader(),
                  value.isLoading
                      ? const EventShimmer()
                      : const TabBarViewBody(),
                  // InkWell(
                  //   onTap: () => context.router.push(QRCodeRouter()),
                  //   child: SizedBox(
                  //     height: 120,
                  //     width: 120,
                  //     child: Image.asset('assets/images/qr.png'),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 62,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

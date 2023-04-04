import 'package:auto_route/auto_route.dart';
import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_information_view/view_models/event_information_view_model.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_information_view/view_models/event_information_widget_view_model.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_information_view/widgets/event_description.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_information_view/widgets/event_information_shimmer.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_information_view/widgets/hosts_list.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_information_view/widgets/photos_and_sign_up.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EventInformationView extends StatefulWidget {
  const EventInformationView({super.key});

  @override
  State<EventInformationView> createState() => _EventInformationViewState();
}

class _EventInformationViewState extends State<EventInformationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Consumer2<EventInformationWidgetViewModel, EventInformationViewModel>(
        builder: (context, value, value2, child) => value.isLoading
            ? const EventInformationShimmer()
            : Container(
                color: PrimaryColor,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 54.0,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 16.0, right: 22.0),
                      margin: const EdgeInsets.only(bottom: 31.0),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () => context.router.pop(),
                            child: Row(
                              children: [
                                Image.asset('assets/images/arrowBack.png'),
                                const SizedBox(
                                  width: 15.0,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.eventDetails,
                                  style: GoogleFonts.montserrat(
                                    color: WhiteColor,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          Image.asset('assets/images/share.png'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 250.0,
                              decoration: BoxDecoration(
                                color: SecondaryColor,
                                image: DecorationImage(
                                  image: (value2.eventDetail!.event!.eventPhotos
                                              as List)
                                          .isEmpty
                                      ? const AssetImage(
                                              'assets/images/rec-placeholder.png')
                                          as ImageProvider
                                      : NetworkImage(
                                          value2.eventDetail!.event!
                                              .eventPhotos[0]
                                              .toString(),
                                        ),
                                ),
                              ),
                            ),
                            const EventDescription(),
                            const SizedBox(height: 10.0),
                            Divider(
                              thickness: 10,
                              color: BoxColor,
                            ),
                            const SizedBox(height: 15.0),
                            Padding(
                              padding: const EdgeInsets.only(left: 14.0),
                              child: Text(
                                AppLocalizations.of(context)!.host,
                                style: GoogleFonts.montserrat(
                                  color: WhiteColor,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 14.0,
                                  right: 14.0,
                                  bottom: 22.0,
                                  top: 15.0),
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 30.0,
                                    backgroundColor: WhiteColor,
                                  ),
                                  const SizedBox(width: 10.0),
                                  Text(
                                    'Runity RunningClub',
                                    style: GoogleFonts.montserrat(
                                      color: WhiteColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const HostsList(),
                            const PhotosAndSignup(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}

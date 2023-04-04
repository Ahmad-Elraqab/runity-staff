import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_information_view/widgets/event_description.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class EventInformationShimmer extends StatefulWidget {
  const EventInformationShimmer({super.key});

  @override
  State<EventInformationShimmer> createState() =>
      _EventInformationShimmerState();
}

class _EventInformationShimmerState extends State<EventInformationShimmer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 22.0),
              child: Row(
                children: [
                  Image.asset('assets/images/arrowBack.png'),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    'Event details',
                    style: GoogleFonts.montserrat(
                      color: WhiteColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
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
                    const SizedBox(
                      height: 31.0,
                    ),
                    Shimmer.fromColors(
                      baseColor: Colors.grey.shade400,
                      highlightColor: Colors.grey.shade100,
                      child: Container(
                        height: 250.0,
                        decoration: BoxDecoration(
                          color: BoxColor,
                        ),
                      ),
                    ),
                    const EventDescriptionShimmer(),
                    const SizedBox(height: 10.0),
                    Divider(
                      thickness: 10,
                      color: BoxColor,
                    ),
                    const SizedBox(height: 15.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0),
                      child: Text(
                        'Hosting',
                        style: GoogleFonts.montserrat(
                          color: WhiteColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 14.0, right: 14.0, bottom: 22.0, top: 15.0),
                      child: Shimmer.fromColors(
                        baseColor: Colors.grey.shade400,
                        highlightColor: Colors.grey.shade100,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundColor: BoxColor,
                            ),
                            const SizedBox(width: 10.0),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: BoxColor,
                              ),
                              height: 20.0,
                              width: 200.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    // const HostsList(),
                    Container(
                      color: BoxColor,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Description',
                            style: GoogleFonts.montserrat(
                              color: WhiteColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down,
                            color: WhiteColor,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14.0, vertical: 15.0),
                          child: Text(
                            'Photos',
                            style: GoogleFonts.montserrat(
                              color: WhiteColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Shimmer.fromColors(
                          baseColor: Colors.grey.shade400,
                          highlightColor: Colors.grey.shade100,
                          child: Container(
                            height: 250.0,
                            color: BoxColor,
                          ),
                        ),
                        const SizedBox(height: 41.0),
                        Container(
                          color: BoxColor,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14.0,
                            vertical: 15.0,
                          ),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              padding: const MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(vertical: 23.0)),
                              fixedSize: const MaterialStatePropertyAll(
                                  Size(double.maxFinite, double.infinity)),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                              backgroundColor:
                                  const MaterialStatePropertyAll(PrimaryColor),
                            ),
                            onPressed: () => {},
                            child: Text(
                              'Sign up',
                              style: GoogleFonts.montserrat(
                                color: WhiteColor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EventDescriptionShimmer extends StatelessWidget {
  const EventDescriptionShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 14.0, right: 14.0),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade400,
        highlightColor: Colors.grey.shade100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: BoxColor,
              ),
              height: 20.0,
              width: 300.0,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: BoxColor,
              ),
              height: 20.0,
              width: 200.0,
            ),
            const SizedBox(height: 10),
            Shimmer.fromColors(
              baseColor: Colors.grey.shade400,
              highlightColor: Colors.grey.shade100,
              child: ListTile(
                minVerticalPadding: 0.0,
                isThreeLine: false,
                dense: true,
                visualDensity: VisualDensity.adaptivePlatformDensity,
                contentPadding: const EdgeInsets.only(left: 4.0),
                minLeadingWidth: 20.0,
                leading: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Image.asset('assets/images/calendar.png'),
                ),
                title: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: BoxColor,
                  ),
                  margin: const EdgeInsets.only(bottom: 8.0),
                  height: 25.0,
                  width: 200.0,
                ),
                subtitle: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: BoxColor,
                  ),
                  height: 25.0,
                  width: 200.0,
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Shimmer.fromColors(
              baseColor: Colors.grey.shade400,
              highlightColor: Colors.grey.shade100,
              child: ListTile(
                minVerticalPadding: 0.0,
                isThreeLine: false,
                dense: true,
                visualDensity: VisualDensity.adaptivePlatformDensity,
                contentPadding: const EdgeInsets.only(left: 4.0),
                minLeadingWidth: 20.0,
                leading: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Image.asset('assets/images/calendar.png'),
                ),
                title: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: BoxColor,
                  ),
                  margin: const EdgeInsets.only(bottom: 8.0),
                  height: 25.0,
                  width: 200.0,
                ),
                subtitle: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: BoxColor,
                  ),
                  height: 25.0,
                  width: 200.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

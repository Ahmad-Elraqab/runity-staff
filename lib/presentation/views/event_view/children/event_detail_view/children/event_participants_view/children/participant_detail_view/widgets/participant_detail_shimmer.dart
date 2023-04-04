import 'package:flutter/material.dart';
import 'package:event_app/base/app/config/app_constants.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ParticipantDetailShimmer extends StatefulWidget {
  const ParticipantDetailShimmer({super.key});

  @override
  State<ParticipantDetailShimmer> createState() => _ParticipantDetailShimmer();
}

class _ParticipantDetailShimmer extends State<ParticipantDetailShimmer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 54.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: [
              Image.asset('assets/images/arrowBack.png'),
              const SizedBox(
                width: 15.0,
              ),
              Shimmer.fromColors(
                baseColor: BoxColor,
                highlightColor: Colors.grey.shade100,
                child: Container(
                  height: 20.0,
                  width: 200,
                  decoration: BoxDecoration(
                    color: BoxColor,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 37.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            'Order details',
            style: GoogleFonts.montserrat(
              color: WhiteColor,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        const OrderDetailsBoxShimmer(),
        const SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: [
              Text(
                'Total payment',
                style: GoogleFonts.montserrat(
                  color: WhiteColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Shimmer.fromColors(
                baseColor: BoxColor,
                highlightColor: Colors.grey.shade100,
                child: Container(
                  height: 20.0,
                  width: 80,
                  decoration: BoxDecoration(
                    color: BoxColor,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 47.0),
        Padding(
          padding: const EdgeInsets.only(left: 14.0),
          child: Text(
            'Participant details',
            style: GoogleFonts.montserrat(
              color: WhiteColor,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 25.0),
        const ParticipantDetailsShimmer(),
      ],
    );
  }
}

class ParticipantDetailsShimmer extends StatelessWidget {
  const ParticipantDetailsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final obj = [
      AppLocalizations.of(context)!.fullname,
      AppLocalizations.of(context)!.gender,
      AppLocalizations.of(context)!.shirtSize,
      AppLocalizations.of(context)!.nricPassport,
      AppLocalizations.of(context)!.nationality,
      AppLocalizations.of(context)!.birthday,
      AppLocalizations.of(context)!.email,
      AppLocalizations.of(context)!.mobileContact,
      '',
      AppLocalizations.of(context)!.address,
      AppLocalizations.of(context)!.postcode,
      AppLocalizations.of(context)!.city,
      AppLocalizations.of(context)!.state,
      AppLocalizations.of(context)!.country,
      '',
      AppLocalizations.of(context)!.emergencyContactName,
      AppLocalizations.of(context)!.emergencyMobileName,
    ];

    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          color: BoxColor,
          child: StaggeredGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 0.0,
            crossAxisSpacing: 25.0,
            children: [
              for (var i = 0; i < obj.length; i++)
                StaggeredGridTile.count(
                  crossAxisCellCount: (i == 9 || i == 10) ? 2 : 4,
                  mainAxisCellCount: (i == 8 || i == 14) ? 0.4 : 1,
                  child: (i == 8 || i == 14)
                      ? Center(
                          child: Container(
                            height: 10.0,
                            color: BoxColor,
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                obj[i].toString(),
                                style: GoogleFonts.montserrat(
                                  color: WhiteColor,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Shimmer.fromColors(
                                baseColor: BoxColor,
                                highlightColor: Colors.grey.shade100,
                                child: Container(
                                  height: 45.0,
                                  margin: const EdgeInsets.only(top: 10.0),
                                  decoration: BoxDecoration(
                                    color: BoxColor,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 13.0,
                                    horizontal: 10.0,
                                  ),
                                ),
                              ),
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

class OrderDetailsBoxShimmer extends StatelessWidget {
  const OrderDetailsBoxShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BoxColor,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            child: Container(
              color: SecondaryColor,
              width: 5.0,
              height: 50.0,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
                left: 14.0, right: 14.0, top: 14.0, bottom: 22.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Shimmer.fromColors(
                baseColor: BoxColor,
                highlightColor: Colors.grey.shade100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 9.0,
                    ),
                    Container(
                      height: 20.0,
                      width: 150,
                      decoration: BoxDecoration(
                        color: BoxColor,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    Container(
                      height: 20.0,
                      width: 60,
                      decoration: BoxDecoration(
                        color: BoxColor,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 23.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'Distance',
                  style: GoogleFonts.montserrat(
                    color: SubTextColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 7.0,
              ),
              Shimmer.fromColors(
                baseColor: BoxColor,
                highlightColor: Colors.grey.shade100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 20.0,
                        width: 60,
                        decoration: BoxDecoration(
                          color: BoxColor,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      Container(
                        height: 20.0,
                        width: 60,
                        decoration: BoxDecoration(
                          color: BoxColor,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

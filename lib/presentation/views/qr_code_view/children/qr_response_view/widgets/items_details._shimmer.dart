import 'package:event_app/base/app/config/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ItemsDetailsShimmer extends StatefulWidget {
  const ItemsDetailsShimmer({
    Key? key,
  }) : super(key: key);

  @override
  State<ItemsDetailsShimmer> createState() => _ItemsDetailsShimmerState();
}

class _ItemsDetailsShimmerState extends State<ItemsDetailsShimmer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 27.0,
        ),
        Divider(
          color: BoxColor,
          thickness: 2.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 16.0,
            ),
            Text(
              AppLocalizations.of(context)!.items,
              style: GoogleFonts.montserrat(
                color: WhiteColor,
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            for (var i = 0; i < 3; i++)
              Shimmer.fromColors(
                baseColor: Colors.grey.shade400,
                highlightColor: Colors.grey.shade100,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 20.0,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: BoxColor,
                        ),
                      ),
                      Container(
                        height: 20.0,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: BoxColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}

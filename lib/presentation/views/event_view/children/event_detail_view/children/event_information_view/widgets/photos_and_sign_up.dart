import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_information_view/view_models/event_information_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PhotosAndSignup extends StatelessWidget {
  const PhotosAndSignup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final event = context.watch<EventInformationViewModel>().eventDetail;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 15.0),
          child: Text(
            AppLocalizations.of(context)!.photos,
            style: GoogleFonts.montserrat(
              color: WhiteColor,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          height: 250.0,
          color: SecondaryColor,
          child: PhotoViewGallery(
            pageOptions: (event!.event!.eventPhotos as List).isEmpty
                ? <PhotoViewGalleryPageOptions>[
                    PhotoViewGalleryPageOptions(
                      imageProvider:
                          const AssetImage('assets/images/rec-placeholder.png'),
                    ),
                  ]
                : <PhotoViewGalleryPageOptions>[
                    ...(event.event!.eventPhotos as List)
                        .map(
                          (e) => PhotoViewGalleryPageOptions(
                            imageProvider: NetworkImage(
                              e.toString(),
                            ),
                          ),
                        )
                        .toList(),
                  ],
            loadingBuilder: (context, progress) => const Center(
              child: SizedBox(
                width: 20.0,
                height: 20.0,
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        ),
        // PhotoViewGallery.builder(
        //   scrollPhysics: const BouncingScrollPhysics(),
        //   builder: (BuildContext context, int index) {
        //     return PhotoViewGalleryPageOptions(
        //       imageProvider:
        //           NetworkImage((event!.event!.eventPhotos as List)[index]),
        //       initialScale: PhotoViewComputedScale.contained * 0.8,
        //     );
        //   },
        //   itemCount: (event!.event!.eventPhotos as List).length,
        //   loadingBuilder: (context, event) => Center(
        //     child: Container(
        //       width: 20.0,
        //       height: 20.0,
        //       child: const CircularProgressIndicator(),
        //     ),
        //   ),
        // backgroundDecoration: widget.backgroundDecoration,
        // pageController: widget.pageController,
        // onPageChanged: onPageChanged,
        // ),

        const SizedBox(height: 41.0),
        Container(
          color: WhiteColor,
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
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0))),
              backgroundColor: const MaterialStatePropertyAll(PrimaryColor),
            ),
            onPressed: () => {},
            child: Text(
              AppLocalizations.of(context)!.signUp,
              style: GoogleFonts.montserrat(
                color: WhiteColor,
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

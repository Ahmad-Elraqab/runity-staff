import 'package:auto_route/auto_route.dart';
import 'package:event_app/base/app/config/app_constants.dart';
import 'package:event_app/base/app/view_models/app_view_model.dart';
import 'package:event_app/base/routers/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.7,
      color: BoxColor,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.only(bottom: 18.0),
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => {
                  context.read<AppViewModel>().clearToken(),
                  context.router.replace(
                    const LoginRouter(),
                  ),
                  Scaffold.of(context).closeDrawer(),
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.logout,
                      style: GoogleFonts.montserrat(
                        color: WhiteColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const CircleAvatar(
                      backgroundColor: WhiteColor,
                      child: Image(
                        image: AssetImage('assets/images/logout.png'),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: BoxColor,
                thickness: 2.0,
                height: 50.0,
              ),
              Text(
                AppLocalizations.of(context)!.language,
                style: GoogleFonts.montserrat(
                  color: WhiteColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () => {
                      context.read<AppViewModel>().locale = const Locale('en'),
                      Scaffold.of(context).closeDrawer(),
                    },
                    child: Image.asset('assets/images/en.png'),
                  ),
                  const SizedBox(height: 4.0),
                  InkWell(
                    onTap: () => {
                      context.read<AppViewModel>().locale = const Locale('ms'),
                      Scaffold.of(context).closeDrawer(),
                    },
                    child: Image.asset('assets/images/ms.png'),
                  ),
                  const SizedBox(height: 4.0),
                  InkWell(
                    onTap: () => {
                      context.read<AppViewModel>().locale = const Locale('zh'),
                      Scaffold.of(context).closeDrawer(),
                    },
                    child: Image.asset('assets/images/zh.png'),
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

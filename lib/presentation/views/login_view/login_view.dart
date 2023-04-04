import 'package:event_app/presentation/views/login_view/view_models/login_view_model.dart';
import 'package:event_app/presentation/views/login_view/view_models/login_widget_view_model.dart';
import 'package:event_app/presentation/views/login_view/widgets/custom_button.dart';
import 'package:event_app/presentation/views/login_view/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:event_app/base/app/config/app_constants.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer2<LoginWidgetViewModel, LoginViewModel>(
        builder: (context, value, value2, child) => Container(
          color: PrimaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 54.0,
              ),
              Text(
                AppLocalizations.of(context)!.signIn,
                style: GoogleFonts.montserrat(
                  color: SecondaryColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 36.0,
              ),
              CustomInputField(
                title: AppLocalizations.of(context)!.email,
                focusNode: value.emailFocusNode,
                onChange: (_value) => {value.setEmail(_value)},
                controller: value.emailController,
              ),
              const SizedBox(
                height: 25.0,
              ),
              CustomInputField(
                title: AppLocalizations.of(context)!.password,
                isSecure: true,
                focusNode: value.passwordFocusNode,
                onChange: (_value) => {value.setPassword(_value)},
                controller: value.passwordController,
              ),
              const SizedBox(
                height: 36.0,
              ),
              value.isLoading
                  ? Center(
                      child: CircularProgressIndicator(
                      color: BoxColor,
                    ))
                  : CustomButton(
                      title: AppLocalizations.of(context)!.signIn,
                      onPress: () => {
                        value2.login(),
                      },
                    )
            ],
          ),
        ),
      ),
    );
  }
}

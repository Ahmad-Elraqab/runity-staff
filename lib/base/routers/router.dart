// For every changes made in router, run the below command:
// `flutter pub run build_runner build --delete-conflicting-outputs`

import 'package:auto_route/auto_route.dart';
import 'package:event_app/base/routers/guards/auth_guard.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_information_view/event_information_view.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_information_view/event_information_wrapper.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/event_detail_view.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/event_detail_wrapper.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/event_participants_view.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/event_participants_wrapper.dart';
import 'package:event_app/presentation/views/event_view/event_view.dart';
import 'package:event_app/presentation/views/event_view/event_wrapper.dart';
import 'package:event_app/presentation/views/login_view/login_view.dart';
import 'package:event_app/presentation/views/login_view/login_wrapper.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/children/participant_detail_view/participant_detail_view.dart';
import 'package:event_app/presentation/views/event_view/children/event_detail_view/children/event_participants_view/children/participant_detail_view/participant_detail_wrapper.dart';
import 'package:event_app/presentation/views/qr_code_view/children/qr_response_view/qr_code_response_view.dart';
import 'package:event_app/presentation/views/qr_code_view/children/qr_response_view/qr_code_response_wrapper.dart';
import 'package:event_app/presentation/views/qr_code_view/qr_code_view.dart';
import 'package:event_app/presentation/views/qr_code_view/qr_code_wrapper.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute(
      path: '/login',
      name: 'LoginRouter',
      page: LoginWrapper,
      children: [
        MaterialRoute(
          path: '',
          page: LoginView,
        ),
      ],
    ),
    MaterialRoute(
      guards: [AuthGuard],
      path: '/event',
      initial: true,
      name: 'EventRouter',
      page: EventWrapper,
      children: [
        MaterialRoute(
          path: '',
          page: EventView,
        ),
        MaterialRoute(
          path: 'details?id&startDate&eventName',
          page: EventDetailWrapper,
          name: 'EventDetailRouter',
          children: [
            MaterialRoute(
              path: '',
              page: EventDetailView,
            ),
            MaterialRoute(
              path: 'event_information?id',
              page: EventInformationWrapper,
              name: 'EventInformationRouter',
              children: [
                MaterialRoute(
                  path: '',
                  page: EventInformationView,
                ),
              ],
            ),
          ],
        ),
        MaterialRoute(
          path: 'participants?id',
          page: EventParticipantsWrapper,
          name: 'EventParticipantsRouter',
          children: [
            MaterialRoute(
              path: '',
              page: EventParticipantsView,
            ),
            MaterialRoute(
              path: 'participant?id',
              name: 'ParticipantRouter',
              page: ParticipantDetailWrapper,
              children: [
                MaterialRoute(
                  path: '',
                  page: ParticipantDetailView,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
    MaterialRoute(
      path: '/qr_code?id',
      name: 'QRCodeRouter',
      page: QRCodeWrapper,
      children: [
        MaterialRoute(
          path: '',
          page: QRCodeView,
        ),
        MaterialRoute(
          path:
              'response?userName&userPhone&userEmail&userIc&eventParticipantId&eventName&eventCategoryName&collectedDatetime&isSuccess&checkInDatetime',
          name: 'ResponseRouter',
          page: QRCodeResponseWrapper,
          children: [
            MaterialRoute(
              path: '',
              page: QRCodeResponseView,
            ),
          ],
        ),
      ],
    ),
  ],
)
class $Router {}

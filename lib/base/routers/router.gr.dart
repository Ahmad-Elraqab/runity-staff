// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/material.dart' as _i18;

import '../../presentation/views/event_view/children/event_detail_view/children/event_information_view/event_information_view.dart'
    as _i10;
import '../../presentation/views/event_view/children/event_detail_view/children/event_information_view/event_information_wrapper.dart'
    as _i9;
import '../../presentation/views/event_view/children/event_detail_view/children/event_participants_view/children/participant_detail_view/participant_detail_view.dart'
    as _i13;
import '../../presentation/views/event_view/children/event_detail_view/children/event_participants_view/children/participant_detail_view/participant_detail_wrapper.dart'
    as _i12;
import '../../presentation/views/event_view/children/event_detail_view/children/event_participants_view/event_participants_view.dart'
    as _i11;
import '../../presentation/views/event_view/children/event_detail_view/children/event_participants_view/event_participants_wrapper.dart'
    as _i7;
import '../../presentation/views/event_view/children/event_detail_view/event_detail_view.dart'
    as _i8;
import '../../presentation/views/event_view/children/event_detail_view/event_detail_wrapper.dart'
    as _i6;
import '../../presentation/views/event_view/event_view.dart' as _i5;
import '../../presentation/views/event_view/event_wrapper.dart' as _i2;
import '../../presentation/views/login_view/login_view.dart' as _i4;
import '../../presentation/views/login_view/login_wrapper.dart' as _i1;
import '../../presentation/views/qr_code_view/children/qr_response_view/qr_code_response_view.dart'
    as _i16;
import '../../presentation/views/qr_code_view/children/qr_response_view/qr_code_response_wrapper.dart'
    as _i15;
import '../../presentation/views/qr_code_view/qr_code_view.dart' as _i14;
import '../../presentation/views/qr_code_view/qr_code_wrapper.dart' as _i3;
import '../../presentation/views/qr_code_view/view_models/qr_code_widget_view_model.dart'
    as _i20;
import 'guards/auth_guard.dart' as _i19;

class Router extends _i17.RootStackRouter {
  Router({
    _i18.GlobalKey<_i18.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i19.AuthGuard authGuard;

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    LoginRouter.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LoginWrapper(),
      );
    },
    EventRouter.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EventWrapper(),
      );
    },
    QRCodeRouter.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<QRCodeRouterArgs>(
          orElse: () => QRCodeRouterArgs(id: queryParams.optString('id')));
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.QRCodeWrapper(
          key: args.key,
          id: args.id,
        ),
      );
    },
    LoginView.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.LoginView(),
      );
    },
    EventView.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.EventView(),
      );
    },
    EventDetailRouter.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<EventDetailRouterArgs>(
          orElse: () => EventDetailRouterArgs(
                id: queryParams.optString('id'),
                startDate: queryParams.optString('startDate'),
                eventName: queryParams.optString('eventName'),
              ));
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.EventDetailWrapper(
          key: args.key,
          id: args.id,
          startDate: args.startDate,
          eventName: args.eventName,
        ),
      );
    },
    EventParticipantsRouter.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<EventParticipantsRouterArgs>(
          orElse: () =>
              EventParticipantsRouterArgs(id: queryParams.optString('id')));
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.EventParticipantsWrapper(
          key: args.key,
          id: args.id,
        ),
      );
    },
    EventDetailView.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.EventDetailView(),
      );
    },
    EventInformationRouter.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<EventInformationRouterArgs>(
          orElse: () =>
              EventInformationRouterArgs(eventId: queryParams.optString('id')));
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.EventInformationWrapper(
          key: args.key,
          eventId: args.eventId,
        ),
      );
    },
    EventInformationView.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.EventInformationView(),
      );
    },
    EventParticipantsView.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.EventParticipantsView(),
      );
    },
    ParticipantRouter.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<ParticipantRouterArgs>(
          orElse: () => ParticipantRouterArgs(id: queryParams.optString('id')));
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.ParticipantDetailWrapper(
          key: args.key,
          id: args.id,
        ),
      );
    },
    ParticipantDetailView.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.ParticipantDetailView(),
      );
    },
    QRCodeView.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.QRCodeView(),
      );
    },
    ResponseRouter.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<ResponseRouterArgs>(
          orElse: () => ResponseRouterArgs(
                userName: queryParams.optString('userName'),
                userPhone: queryParams.optString('userPhone'),
                userEmail: queryParams.optString('userEmail'),
                userIc: queryParams.optString('userIc'),
                eventParticipantId: queryParams.optString('eventParticipantId'),
                eventName: queryParams.optString('eventName'),
                eventCategoryName: queryParams.optString('eventCategoryName'),
                collectedDatetime: queryParams.optString('collectedDatetime'),
                checkInDatetime: queryParams.optString('checkInDatetime'),
                type: queryParams.get('type'),
                isSuccess: queryParams.optBool('isSuccess'),
              ));
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i15.QRCodeResponseWrapper(
          key: args.key,
          userName: args.userName,
          userPhone: args.userPhone,
          userEmail: args.userEmail,
          userIc: args.userIc,
          eventParticipantId: args.eventParticipantId,
          eventName: args.eventName,
          eventCategoryName: args.eventCategoryName,
          collectedDatetime: args.collectedDatetime,
          checkInDatetime: args.checkInDatetime,
          type: args.type,
          isSuccess: args.isSuccess,
        ),
      );
    },
    QRCodeResponseView.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.QRCodeResponseView(),
      );
    },
  };

  @override
  List<_i17.RouteConfig> get routes => [
        _i17.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/event',
          fullMatch: true,
        ),
        _i17.RouteConfig(
          LoginRouter.name,
          path: '/login',
          children: [
            _i17.RouteConfig(
              LoginView.name,
              path: '',
              parent: LoginRouter.name,
            )
          ],
        ),
        _i17.RouteConfig(
          EventRouter.name,
          path: '/event',
          guards: [authGuard],
          children: [
            _i17.RouteConfig(
              EventView.name,
              path: '',
              parent: EventRouter.name,
            ),
            _i17.RouteConfig(
              EventDetailRouter.name,
              path: 'details?id&startDate&eventName',
              parent: EventRouter.name,
              children: [
                _i17.RouteConfig(
                  EventDetailView.name,
                  path: '',
                  parent: EventDetailRouter.name,
                ),
                _i17.RouteConfig(
                  EventInformationRouter.name,
                  path: 'event_information?id',
                  parent: EventDetailRouter.name,
                  children: [
                    _i17.RouteConfig(
                      EventInformationView.name,
                      path: '',
                      parent: EventInformationRouter.name,
                    )
                  ],
                ),
              ],
            ),
            _i17.RouteConfig(
              EventParticipantsRouter.name,
              path: 'participants?id',
              parent: EventRouter.name,
              children: [
                _i17.RouteConfig(
                  EventParticipantsView.name,
                  path: '',
                  parent: EventParticipantsRouter.name,
                ),
                _i17.RouteConfig(
                  ParticipantRouter.name,
                  path: 'participant?id',
                  parent: EventParticipantsRouter.name,
                  children: [
                    _i17.RouteConfig(
                      ParticipantDetailView.name,
                      path: '',
                      parent: ParticipantRouter.name,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        _i17.RouteConfig(
          QRCodeRouter.name,
          path: '/qr_code?id',
          children: [
            _i17.RouteConfig(
              QRCodeView.name,
              path: '',
              parent: QRCodeRouter.name,
            ),
            _i17.RouteConfig(
              ResponseRouter.name,
              path:
                  'response?userName&userPhone&userEmail&userIc&eventParticipantId&eventName&eventCategoryName&collectedDatetime&isSuccess&checkInDatetime',
              parent: QRCodeRouter.name,
              children: [
                _i17.RouteConfig(
                  QRCodeResponseView.name,
                  path: '',
                  parent: ResponseRouter.name,
                )
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.LoginWrapper]
class LoginRouter extends _i17.PageRouteInfo<void> {
  const LoginRouter({List<_i17.PageRouteInfo>? children})
      : super(
          LoginRouter.name,
          path: '/login',
          initialChildren: children,
        );

  static const String name = 'LoginRouter';
}

/// generated route for
/// [_i2.EventWrapper]
class EventRouter extends _i17.PageRouteInfo<void> {
  const EventRouter({List<_i17.PageRouteInfo>? children})
      : super(
          EventRouter.name,
          path: '/event',
          initialChildren: children,
        );

  static const String name = 'EventRouter';
}

/// generated route for
/// [_i3.QRCodeWrapper]
class QRCodeRouter extends _i17.PageRouteInfo<QRCodeRouterArgs> {
  QRCodeRouter({
    _i18.Key? key,
    String? id,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          QRCodeRouter.name,
          path: '/qr_code?id',
          args: QRCodeRouterArgs(
            key: key,
            id: id,
          ),
          rawQueryParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'QRCodeRouter';
}

class QRCodeRouterArgs {
  const QRCodeRouterArgs({
    this.key,
    this.id,
  });

  final _i18.Key? key;

  final String? id;

  @override
  String toString() {
    return 'QRCodeRouterArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i4.LoginView]
class LoginView extends _i17.PageRouteInfo<void> {
  const LoginView()
      : super(
          LoginView.name,
          path: '',
        );

  static const String name = 'LoginView';
}

/// generated route for
/// [_i5.EventView]
class EventView extends _i17.PageRouteInfo<void> {
  const EventView()
      : super(
          EventView.name,
          path: '',
        );

  static const String name = 'EventView';
}

/// generated route for
/// [_i6.EventDetailWrapper]
class EventDetailRouter extends _i17.PageRouteInfo<EventDetailRouterArgs> {
  EventDetailRouter({
    _i18.Key? key,
    String? id,
    String? startDate,
    String? eventName,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          EventDetailRouter.name,
          path: 'details?id&startDate&eventName',
          args: EventDetailRouterArgs(
            key: key,
            id: id,
            startDate: startDate,
            eventName: eventName,
          ),
          rawQueryParams: {
            'id': id,
            'startDate': startDate,
            'eventName': eventName,
          },
          initialChildren: children,
        );

  static const String name = 'EventDetailRouter';
}

class EventDetailRouterArgs {
  const EventDetailRouterArgs({
    this.key,
    this.id,
    this.startDate,
    this.eventName,
  });

  final _i18.Key? key;

  final String? id;

  final String? startDate;

  final String? eventName;

  @override
  String toString() {
    return 'EventDetailRouterArgs{key: $key, id: $id, startDate: $startDate, eventName: $eventName}';
  }
}

/// generated route for
/// [_i7.EventParticipantsWrapper]
class EventParticipantsRouter
    extends _i17.PageRouteInfo<EventParticipantsRouterArgs> {
  EventParticipantsRouter({
    _i18.Key? key,
    String? id,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          EventParticipantsRouter.name,
          path: 'participants?id',
          args: EventParticipantsRouterArgs(
            key: key,
            id: id,
          ),
          rawQueryParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'EventParticipantsRouter';
}

class EventParticipantsRouterArgs {
  const EventParticipantsRouterArgs({
    this.key,
    this.id,
  });

  final _i18.Key? key;

  final String? id;

  @override
  String toString() {
    return 'EventParticipantsRouterArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i8.EventDetailView]
class EventDetailView extends _i17.PageRouteInfo<void> {
  const EventDetailView()
      : super(
          EventDetailView.name,
          path: '',
        );

  static const String name = 'EventDetailView';
}

/// generated route for
/// [_i9.EventInformationWrapper]
class EventInformationRouter
    extends _i17.PageRouteInfo<EventInformationRouterArgs> {
  EventInformationRouter({
    _i18.Key? key,
    String? eventId,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          EventInformationRouter.name,
          path: 'event_information?id',
          args: EventInformationRouterArgs(
            key: key,
            eventId: eventId,
          ),
          rawQueryParams: {'id': eventId},
          initialChildren: children,
        );

  static const String name = 'EventInformationRouter';
}

class EventInformationRouterArgs {
  const EventInformationRouterArgs({
    this.key,
    this.eventId,
  });

  final _i18.Key? key;

  final String? eventId;

  @override
  String toString() {
    return 'EventInformationRouterArgs{key: $key, eventId: $eventId}';
  }
}

/// generated route for
/// [_i10.EventInformationView]
class EventInformationView extends _i17.PageRouteInfo<void> {
  const EventInformationView()
      : super(
          EventInformationView.name,
          path: '',
        );

  static const String name = 'EventInformationView';
}

/// generated route for
/// [_i11.EventParticipantsView]
class EventParticipantsView extends _i17.PageRouteInfo<void> {
  const EventParticipantsView()
      : super(
          EventParticipantsView.name,
          path: '',
        );

  static const String name = 'EventParticipantsView';
}

/// generated route for
/// [_i12.ParticipantDetailWrapper]
class ParticipantRouter extends _i17.PageRouteInfo<ParticipantRouterArgs> {
  ParticipantRouter({
    _i18.Key? key,
    String? id,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          ParticipantRouter.name,
          path: 'participant?id',
          args: ParticipantRouterArgs(
            key: key,
            id: id,
          ),
          rawQueryParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'ParticipantRouter';
}

class ParticipantRouterArgs {
  const ParticipantRouterArgs({
    this.key,
    this.id,
  });

  final _i18.Key? key;

  final String? id;

  @override
  String toString() {
    return 'ParticipantRouterArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i13.ParticipantDetailView]
class ParticipantDetailView extends _i17.PageRouteInfo<void> {
  const ParticipantDetailView()
      : super(
          ParticipantDetailView.name,
          path: '',
        );

  static const String name = 'ParticipantDetailView';
}

/// generated route for
/// [_i14.QRCodeView]
class QRCodeView extends _i17.PageRouteInfo<void> {
  const QRCodeView()
      : super(
          QRCodeView.name,
          path: '',
        );

  static const String name = 'QRCodeView';
}

/// generated route for
/// [_i15.QRCodeResponseWrapper]
class ResponseRouter extends _i17.PageRouteInfo<ResponseRouterArgs> {
  ResponseRouter({
    _i18.Key? key,
    String? userName,
    String? userPhone,
    String? userEmail,
    String? userIc,
    String? eventParticipantId,
    String? eventName,
    String? eventCategoryName,
    String? collectedDatetime,
    String? checkInDatetime,
    _i20.QRResponseType? type,
    bool? isSuccess,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          ResponseRouter.name,
          path:
              'response?userName&userPhone&userEmail&userIc&eventParticipantId&eventName&eventCategoryName&collectedDatetime&isSuccess&checkInDatetime',
          args: ResponseRouterArgs(
            key: key,
            userName: userName,
            userPhone: userPhone,
            userEmail: userEmail,
            userIc: userIc,
            eventParticipantId: eventParticipantId,
            eventName: eventName,
            eventCategoryName: eventCategoryName,
            collectedDatetime: collectedDatetime,
            checkInDatetime: checkInDatetime,
            type: type,
            isSuccess: isSuccess,
          ),
          rawQueryParams: {
            'userName': userName,
            'userPhone': userPhone,
            'userEmail': userEmail,
            'userIc': userIc,
            'eventParticipantId': eventParticipantId,
            'eventName': eventName,
            'eventCategoryName': eventCategoryName,
            'collectedDatetime': collectedDatetime,
            'checkInDatetime': checkInDatetime,
            'type': type,
            'isSuccess': isSuccess,
          },
          initialChildren: children,
        );

  static const String name = 'ResponseRouter';
}

class ResponseRouterArgs {
  const ResponseRouterArgs({
    this.key,
    this.userName,
    this.userPhone,
    this.userEmail,
    this.userIc,
    this.eventParticipantId,
    this.eventName,
    this.eventCategoryName,
    this.collectedDatetime,
    this.checkInDatetime,
    this.type,
    this.isSuccess,
  });

  final _i18.Key? key;

  final String? userName;

  final String? userPhone;

  final String? userEmail;

  final String? userIc;

  final String? eventParticipantId;

  final String? eventName;

  final String? eventCategoryName;

  final String? collectedDatetime;

  final String? checkInDatetime;

  final _i20.QRResponseType? type;

  final bool? isSuccess;

  @override
  String toString() {
    return 'ResponseRouterArgs{key: $key, userName: $userName, userPhone: $userPhone, userEmail: $userEmail, userIc: $userIc, eventParticipantId: $eventParticipantId, eventName: $eventName, eventCategoryName: $eventCategoryName, collectedDatetime: $collectedDatetime, checkInDatetime: $checkInDatetime, type: $type, isSuccess: $isSuccess}';
  }
}

/// generated route for
/// [_i16.QRCodeResponseView]
class QRCodeResponseView extends _i17.PageRouteInfo<void> {
  const QRCodeResponseView()
      : super(
          QRCodeResponseView.name,
          path: '',
        );

  static const String name = 'QRCodeResponseView';
}

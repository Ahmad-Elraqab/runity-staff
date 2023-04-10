import 'dart:convert';

import 'package:event_app/base/app/config/global_keys.dart';
import 'package:event_app/data/models/event_detail_model/event_detail_model.dart';
import 'package:event_app/data/models/event_model/event_model.dart';
import 'package:event_app/data/models/event_summary_model/event_summary_model.dart';
import 'package:event_app/data/repositories/rest_repository.dart';
import 'package:event_app/domain/entities/event_detail_entity/event_category_entitlement_entity.dart';
import 'package:event_app/domain/entities/event_detail_entity/event_category_entitlement_subitem_entity.dart';
import 'package:event_app/domain/entities/event_detail_entity/event_category_entity.dart';
import 'package:event_app/domain/entities/event_detail_entity/event_detail_entity.dart';
import 'package:event_app/domain/entities/event_entity/event_entity.dart';
import 'package:event_app/domain/entities/event_summary_entity/event_summary_entity.dart';
import 'package:event_app/domain/repositories/event_repository.dart';

class EventRepositoryImpl implements EventRepository {
  RestService restService;

  EventRepositoryImpl({required this.restService});

  @override
  Future<Map<String, dynamic>> getAllEntities() async {
    // Future<(List<EventEntity>, List<EventEntity>)> getAllEntities() async {
    try {
      final response = await restService.dio.post(
        'Staff/event/list',
        data: {
          'apiKey': GlobalKeys.appApikey,
          'data': {},
        },
      );

      final List<EventModel> pastEventModels =
          (jsonDecode(response.data)['response']['eventList']['past'] as List)
              .map((e) => EventModel.fromJson(e))
              .toList();
      final List<EventModel> upcomingEventModels =
          (jsonDecode(response.data)['response']['eventList']['upcoming']
                  as List)
              .map((e) => EventModel.fromJson(e))
              .toList();

      final List<EventEntity> pastEventEntity =
          pastEventModels.map((e) => e.toEntity()).toList();
      final List<EventEntity> upcomingEventEntity =
          upcomingEventModels.map((e) => e.toEntity()).toList();

      return {'past': pastEventEntity, 'upcoming': upcomingEventEntity};
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<EventSummaryEntity> getEventSummaryById({String? id}) async {
    try {
      final response = await restService.dio.post(
        'Staff/event/summary',
        data: {
          'apiKey': GlobalKeys.appApikey,
          'data': {
            'eventId': id,
          },
        },
      );

      final eventSummaryModel =
          EventSummaryModel.fromJson(jsonDecode(response.data)['response']);

      final eventSummaryEntity = EventSummaryEntity(
        totalCheckedIn: eventSummaryModel.totalCheckedIn,
        totalCollected: eventSummaryModel.totalCollected,
        totalParticipant: eventSummaryModel.totalParticipant,
      );

      return eventSummaryEntity;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<EventDetailEntity> getEventDetail({String? eventId}) async {
    try {
      final response = await restService.dio.post(
        'Staff/event/detail',
        data: {
          'apiKey': GlobalKeys.appApikey,
          'data': {
            'eventId': eventId,
          },
        },
      );

      final eventDetailModel = EventDetailModel.fromJson(
          jsonDecode(response.data)['response']['event']);

      final eventDetailEntity = EventDetailEntity(
        event: eventDetailModel.event!.toEntity(),
        eventCategoryType: eventDetailModel.eventCategoryType,
        eventId: eventDetailModel.eventId,
        maxPrice: eventDetailModel.maxPrice,
        minPrice: eventDetailModel.minPrice,
        vendorEmail: eventDetailModel.vendorEmail,
        vendorImageUrl: eventDetailModel.vendorImageUrl,
        vendorName: eventDetailModel.vendorName,
        vendorPhone: eventDetailModel.vendorPhone,
        vendorPhoneCountrycode: eventDetailModel.vendorPhoneCountrycode,
        vendorWebsite: eventDetailModel.vendorWebsite,
        eventCategory: eventDetailModel.eventCategory!
            .map((e) => EventCategoryEntity(
                  createdDatetime: e.createdDatetime,
                  eventCategoryCurrency: e.eventCategoryCurrency,
                  eventCategoryEntitlements: e.eventCategoryEntitlements!
                      .map(
                        (e) => EventCategoryEntitlementEntity(
                          eventEntitlementId: e.eventEntitlementId,
                          eventEntitlementName: e.eventEntitlementName,
                          eventEntitlementPrice: e.eventEntitlementPrice,
                          eventEntitlementQuantity: e.eventEntitlementQuantity,
                          eventId: e.eventId,
                          itemMode: e.itemMode,
                          subItems: e.subItems!
                              .map((e) => EventCategoryEntitlementSubItemEntity(
                                    availableQuantity:
                                        e.availableQuantity.toString(),
                                    eventEntitlementId: e.eventEntitlementId,
                                    eventEntitlementName:
                                        e.eventEntitlementName,
                                    eventEntitlementPrice:
                                        e.eventEntitlementPrice,
                                    eventEntitlementQuantity:
                                        e.eventEntitlementQuantity,
                                  ))
                              .toList(),
                        ),
                      )
                      .toList(),
                  eventCategoryId: e.eventCategoryId,
                  eventCategoryName: e.eventCategoryName,
                  eventCategoryPrice: e.eventCategoryPrice,
                  eventCategoryType: e.eventCategoryType,
                  eventId: e.eventId,
                ))
            .toList(),
      );

      return eventDetailEntity;
    } catch (e) {
      rethrow;
    }
  }
}

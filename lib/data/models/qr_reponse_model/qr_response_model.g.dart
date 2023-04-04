// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_response_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QRResponseModelCWProxy {
  QRResponseModel collectedDatetime(String? collectedDatetime);

  QRResponseModel eventCategoryName(String? eventCategoryName);

  QRResponseModel eventName(String? eventName);

  QRResponseModel eventParticipantId(String? eventParticipantId);

  QRResponseModel userEmail(String? userEmail);

  QRResponseModel userIc(String? userIc);

  QRResponseModel checkInDatetime(String? checkInDatetime);

  QRResponseModel userName(String? userName);

  QRResponseModel userPhone(String? userPhone);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QRResponseModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QRResponseModel(...).copyWith(id: 12, name: "My name")
  /// ````
  QRResponseModel call({
    String? collectedDatetime,
    String? eventCategoryName,
    String? eventName,
    String? eventParticipantId,
    String? userEmail,
    String? userIc,
    String? checkInDatetime,
    String? userName,
    String? userPhone,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfQRResponseModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfQRResponseModel.copyWith.fieldName(...)`
class _$QRResponseModelCWProxyImpl implements _$QRResponseModelCWProxy {
  const _$QRResponseModelCWProxyImpl(this._value);

  final QRResponseModel _value;

  @override
  QRResponseModel collectedDatetime(String? collectedDatetime) =>
      this(collectedDatetime: collectedDatetime);

  @override
  QRResponseModel eventCategoryName(String? eventCategoryName) =>
      this(eventCategoryName: eventCategoryName);

  @override
  QRResponseModel eventName(String? eventName) => this(eventName: eventName);

  @override
  QRResponseModel eventParticipantId(String? eventParticipantId) =>
      this(eventParticipantId: eventParticipantId);

  @override
  QRResponseModel userEmail(String? userEmail) => this(userEmail: userEmail);

  @override
  QRResponseModel userIc(String? userIc) => this(userIc: userIc);

  @override
  QRResponseModel checkInDatetime(String? checkInDatetime) =>
      this(checkInDatetime: checkInDatetime);

  @override
  QRResponseModel userName(String? userName) => this(userName: userName);

  @override
  QRResponseModel userPhone(String? userPhone) => this(userPhone: userPhone);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QRResponseModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QRResponseModel(...).copyWith(id: 12, name: "My name")
  /// ````
  QRResponseModel call({
    Object? collectedDatetime = const $CopyWithPlaceholder(),
    Object? eventCategoryName = const $CopyWithPlaceholder(),
    Object? eventName = const $CopyWithPlaceholder(),
    Object? eventParticipantId = const $CopyWithPlaceholder(),
    Object? userEmail = const $CopyWithPlaceholder(),
    Object? userIc = const $CopyWithPlaceholder(),
    Object? checkInDatetime = const $CopyWithPlaceholder(),
    Object? userName = const $CopyWithPlaceholder(),
    Object? userPhone = const $CopyWithPlaceholder(),
  }) {
    return QRResponseModel(
      collectedDatetime: collectedDatetime == const $CopyWithPlaceholder()
          ? _value.collectedDatetime
          // ignore: cast_nullable_to_non_nullable
          : collectedDatetime as String?,
      eventCategoryName: eventCategoryName == const $CopyWithPlaceholder()
          ? _value.eventCategoryName
          // ignore: cast_nullable_to_non_nullable
          : eventCategoryName as String?,
      eventName: eventName == const $CopyWithPlaceholder()
          ? _value.eventName
          // ignore: cast_nullable_to_non_nullable
          : eventName as String?,
      eventParticipantId: eventParticipantId == const $CopyWithPlaceholder()
          ? _value.eventParticipantId
          // ignore: cast_nullable_to_non_nullable
          : eventParticipantId as String?,
      userEmail: userEmail == const $CopyWithPlaceholder()
          ? _value.userEmail
          // ignore: cast_nullable_to_non_nullable
          : userEmail as String?,
      userIc: userIc == const $CopyWithPlaceholder()
          ? _value.userIc
          // ignore: cast_nullable_to_non_nullable
          : userIc as String?,
      checkInDatetime: checkInDatetime == const $CopyWithPlaceholder()
          ? _value.checkInDatetime
          // ignore: cast_nullable_to_non_nullable
          : checkInDatetime as String?,
      userName: userName == const $CopyWithPlaceholder()
          ? _value.userName
          // ignore: cast_nullable_to_non_nullable
          : userName as String?,
      userPhone: userPhone == const $CopyWithPlaceholder()
          ? _value.userPhone
          // ignore: cast_nullable_to_non_nullable
          : userPhone as String?,
    );
  }
}

extension $QRResponseModelCopyWith on QRResponseModel {
  /// Returns a callable class that can be used as follows: `instanceOfQRResponseModel.copyWith(...)` or like so:`instanceOfQRResponseModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QRResponseModelCWProxy get copyWith => _$QRResponseModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QRResponseModel _$QRResponseModelFromJson(Map<String, dynamic> json) =>
    QRResponseModel(
      collectedDatetime: json['collected_datetime'] as String?,
      eventCategoryName: json['event_category_name'] as String?,
      eventName: json['event_name'] as String?,
      eventParticipantId: json['event_participant_id'] as String?,
      userEmail: json['user_email'] as String?,
      userIc: json['user_ic'] as String?,
      checkInDatetime: json['checkin_datetime'] as String?,
      userName: json['user_name'] as String?,
      userPhone: json['user_phone'] as String?,
    );

Map<String, dynamic> _$QRResponseModelToJson(QRResponseModel instance) =>
    <String, dynamic>{
      'user_name': instance.userName,
      'user_phone': instance.userPhone,
      'user_email': instance.userEmail,
      'user_ic': instance.userIc,
      'event_participant_id': instance.eventParticipantId,
      'event_name': instance.eventName,
      'event_category_name': instance.eventCategoryName,
      'collected_datetime': instance.collectedDatetime,
      'checkin_datetime': instance.checkInDatetime,
    };

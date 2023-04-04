// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_response_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QRResponseEntityCWProxy {
  QRResponseEntity collectedDatetime(String? collectedDatetime);

  QRResponseEntity eventCategoryName(String? eventCategoryName);

  QRResponseEntity eventName(String? eventName);

  QRResponseEntity eventParticipantId(String? eventParticipantId);

  QRResponseEntity userEmail(String? userEmail);

  QRResponseEntity userIc(String? userIc);

  QRResponseEntity userName(String? userName);

  QRResponseEntity userPhone(String? userPhone);

  QRResponseEntity checkInDatetime(String? checkInDatetime);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QRResponseEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QRResponseEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  QRResponseEntity call({
    String? collectedDatetime,
    String? eventCategoryName,
    String? eventName,
    String? eventParticipantId,
    String? userEmail,
    String? userIc,
    String? userName,
    String? userPhone,
    String? checkInDatetime,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfQRResponseEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfQRResponseEntity.copyWith.fieldName(...)`
class _$QRResponseEntityCWProxyImpl implements _$QRResponseEntityCWProxy {
  const _$QRResponseEntityCWProxyImpl(this._value);

  final QRResponseEntity _value;

  @override
  QRResponseEntity collectedDatetime(String? collectedDatetime) =>
      this(collectedDatetime: collectedDatetime);

  @override
  QRResponseEntity eventCategoryName(String? eventCategoryName) =>
      this(eventCategoryName: eventCategoryName);

  @override
  QRResponseEntity eventName(String? eventName) => this(eventName: eventName);

  @override
  QRResponseEntity eventParticipantId(String? eventParticipantId) =>
      this(eventParticipantId: eventParticipantId);

  @override
  QRResponseEntity userEmail(String? userEmail) => this(userEmail: userEmail);

  @override
  QRResponseEntity userIc(String? userIc) => this(userIc: userIc);

  @override
  QRResponseEntity userName(String? userName) => this(userName: userName);

  @override
  QRResponseEntity userPhone(String? userPhone) => this(userPhone: userPhone);

  @override
  QRResponseEntity checkInDatetime(String? checkInDatetime) =>
      this(checkInDatetime: checkInDatetime);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QRResponseEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QRResponseEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  QRResponseEntity call({
    Object? collectedDatetime = const $CopyWithPlaceholder(),
    Object? eventCategoryName = const $CopyWithPlaceholder(),
    Object? eventName = const $CopyWithPlaceholder(),
    Object? eventParticipantId = const $CopyWithPlaceholder(),
    Object? userEmail = const $CopyWithPlaceholder(),
    Object? userIc = const $CopyWithPlaceholder(),
    Object? userName = const $CopyWithPlaceholder(),
    Object? userPhone = const $CopyWithPlaceholder(),
    Object? checkInDatetime = const $CopyWithPlaceholder(),
  }) {
    return QRResponseEntity(
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
      userName: userName == const $CopyWithPlaceholder()
          ? _value.userName
          // ignore: cast_nullable_to_non_nullable
          : userName as String?,
      userPhone: userPhone == const $CopyWithPlaceholder()
          ? _value.userPhone
          // ignore: cast_nullable_to_non_nullable
          : userPhone as String?,
      checkInDatetime: checkInDatetime == const $CopyWithPlaceholder()
          ? _value.checkInDatetime
          // ignore: cast_nullable_to_non_nullable
          : checkInDatetime as String?,
    );
  }
}

extension $QRResponseEntityCopyWith on QRResponseEntity {
  /// Returns a callable class that can be used as follows: `instanceOfQRResponseEntity.copyWith(...)` or like so:`instanceOfQRResponseEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QRResponseEntityCWProxy get copyWith => _$QRResponseEntityCWProxyImpl(this);
}

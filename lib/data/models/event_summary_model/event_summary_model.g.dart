// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_summary_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EventSummaryModelCWProxy {
  EventSummaryModel totalCheckedIn(String? totalCheckedIn);

  EventSummaryModel totalCollected(String? totalCollected);

  EventSummaryModel totalParticipant(String? totalParticipant);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventSummaryModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventSummaryModel(...).copyWith(id: 12, name: "My name")
  /// ````
  EventSummaryModel call({
    String? totalCheckedIn,
    String? totalCollected,
    String? totalParticipant,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEventSummaryModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEventSummaryModel.copyWith.fieldName(...)`
class _$EventSummaryModelCWProxyImpl implements _$EventSummaryModelCWProxy {
  const _$EventSummaryModelCWProxyImpl(this._value);

  final EventSummaryModel _value;

  @override
  EventSummaryModel totalCheckedIn(String? totalCheckedIn) =>
      this(totalCheckedIn: totalCheckedIn);

  @override
  EventSummaryModel totalCollected(String? totalCollected) =>
      this(totalCollected: totalCollected);

  @override
  EventSummaryModel totalParticipant(String? totalParticipant) =>
      this(totalParticipant: totalParticipant);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventSummaryModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventSummaryModel(...).copyWith(id: 12, name: "My name")
  /// ````
  EventSummaryModel call({
    Object? totalCheckedIn = const $CopyWithPlaceholder(),
    Object? totalCollected = const $CopyWithPlaceholder(),
    Object? totalParticipant = const $CopyWithPlaceholder(),
  }) {
    return EventSummaryModel(
      totalCheckedIn: totalCheckedIn == const $CopyWithPlaceholder()
          ? _value.totalCheckedIn
          // ignore: cast_nullable_to_non_nullable
          : totalCheckedIn as String?,
      totalCollected: totalCollected == const $CopyWithPlaceholder()
          ? _value.totalCollected
          // ignore: cast_nullable_to_non_nullable
          : totalCollected as String?,
      totalParticipant: totalParticipant == const $CopyWithPlaceholder()
          ? _value.totalParticipant
          // ignore: cast_nullable_to_non_nullable
          : totalParticipant as String?,
    );
  }
}

extension $EventSummaryModelCopyWith on EventSummaryModel {
  /// Returns a callable class that can be used as follows: `instanceOfEventSummaryModel.copyWith(...)` or like so:`instanceOfEventSummaryModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EventSummaryModelCWProxy get copyWith =>
      _$EventSummaryModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventSummaryModel _$EventSummaryModelFromJson(Map<String, dynamic> json) =>
    EventSummaryModel(
      totalCheckedIn: json['totalCheckedIn'] as String?,
      totalCollected: json['totalCollected'] as String?,
      totalParticipant: json['totalParticipant'] as String?,
    );

Map<String, dynamic> _$EventSummaryModelToJson(EventSummaryModel instance) =>
    <String, dynamic>{
      'totalParticipant': instance.totalParticipant,
      'totalCollected': instance.totalCollected,
      'totalCheckedIn': instance.totalCheckedIn,
    };

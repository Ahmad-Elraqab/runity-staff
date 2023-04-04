// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_summary_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EventSummaryEntityCWProxy {
  EventSummaryEntity totalCheckedIn(String? totalCheckedIn);

  EventSummaryEntity totalCollected(String? totalCollected);

  EventSummaryEntity totalParticipant(String? totalParticipant);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventSummaryEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventSummaryEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  EventSummaryEntity call({
    String? totalCheckedIn,
    String? totalCollected,
    String? totalParticipant,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEventSummaryEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEventSummaryEntity.copyWith.fieldName(...)`
class _$EventSummaryEntityCWProxyImpl implements _$EventSummaryEntityCWProxy {
  const _$EventSummaryEntityCWProxyImpl(this._value);

  final EventSummaryEntity _value;

  @override
  EventSummaryEntity totalCheckedIn(String? totalCheckedIn) =>
      this(totalCheckedIn: totalCheckedIn);

  @override
  EventSummaryEntity totalCollected(String? totalCollected) =>
      this(totalCollected: totalCollected);

  @override
  EventSummaryEntity totalParticipant(String? totalParticipant) =>
      this(totalParticipant: totalParticipant);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EventSummaryEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EventSummaryEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  EventSummaryEntity call({
    Object? totalCheckedIn = const $CopyWithPlaceholder(),
    Object? totalCollected = const $CopyWithPlaceholder(),
    Object? totalParticipant = const $CopyWithPlaceholder(),
  }) {
    return EventSummaryEntity(
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

extension $EventSummaryEntityCopyWith on EventSummaryEntity {
  /// Returns a callable class that can be used as follows: `instanceOfEventSummaryEntity.copyWith(...)` or like so:`instanceOfEventSummaryEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EventSummaryEntityCWProxy get copyWith =>
      _$EventSummaryEntityCWProxyImpl(this);
}

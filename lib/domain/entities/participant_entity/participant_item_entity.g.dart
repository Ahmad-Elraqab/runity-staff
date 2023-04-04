// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant_item_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ParticipantItemEntityCWProxy {
  ParticipantItemEntity itemName(String? itemName);

  ParticipantItemEntity itemQuantity(String? itemQuantity);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ParticipantItemEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ParticipantItemEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  ParticipantItemEntity call({
    String? itemName,
    String? itemQuantity,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfParticipantItemEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfParticipantItemEntity.copyWith.fieldName(...)`
class _$ParticipantItemEntityCWProxyImpl
    implements _$ParticipantItemEntityCWProxy {
  const _$ParticipantItemEntityCWProxyImpl(this._value);

  final ParticipantItemEntity _value;

  @override
  ParticipantItemEntity itemName(String? itemName) => this(itemName: itemName);

  @override
  ParticipantItemEntity itemQuantity(String? itemQuantity) =>
      this(itemQuantity: itemQuantity);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ParticipantItemEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ParticipantItemEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  ParticipantItemEntity call({
    Object? itemName = const $CopyWithPlaceholder(),
    Object? itemQuantity = const $CopyWithPlaceholder(),
  }) {
    return ParticipantItemEntity(
      itemName: itemName == const $CopyWithPlaceholder()
          ? _value.itemName
          // ignore: cast_nullable_to_non_nullable
          : itemName as String?,
      itemQuantity: itemQuantity == const $CopyWithPlaceholder()
          ? _value.itemQuantity
          // ignore: cast_nullable_to_non_nullable
          : itemQuantity as String?,
    );
  }
}

extension $ParticipantItemEntityCopyWith on ParticipantItemEntity {
  /// Returns a callable class that can be used as follows: `instanceOfParticipantItemEntity.copyWith(...)` or like so:`instanceOfParticipantItemEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ParticipantItemEntityCWProxy get copyWith =>
      _$ParticipantItemEntityCWProxyImpl(this);
}

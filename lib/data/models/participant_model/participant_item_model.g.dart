// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant_item_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ParticipantItemModelCWProxy {
  ParticipantItemModel itemName(String? itemName);

  ParticipantItemModel itemQuantity(String? itemQuantity);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ParticipantItemModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ParticipantItemModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ParticipantItemModel call({
    String? itemName,
    String? itemQuantity,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfParticipantItemModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfParticipantItemModel.copyWith.fieldName(...)`
class _$ParticipantItemModelCWProxyImpl
    implements _$ParticipantItemModelCWProxy {
  const _$ParticipantItemModelCWProxyImpl(this._value);

  final ParticipantItemModel _value;

  @override
  ParticipantItemModel itemName(String? itemName) => this(itemName: itemName);

  @override
  ParticipantItemModel itemQuantity(String? itemQuantity) =>
      this(itemQuantity: itemQuantity);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ParticipantItemModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ParticipantItemModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ParticipantItemModel call({
    Object? itemName = const $CopyWithPlaceholder(),
    Object? itemQuantity = const $CopyWithPlaceholder(),
  }) {
    return ParticipantItemModel(
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

extension $ParticipantItemModelCopyWith on ParticipantItemModel {
  /// Returns a callable class that can be used as follows: `instanceOfParticipantItemModel.copyWith(...)` or like so:`instanceOfParticipantItemModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ParticipantItemModelCWProxy get copyWith =>
      _$ParticipantItemModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParticipantItemModel _$ParticipantItemModelFromJson(
        Map<String, dynamic> json) =>
    ParticipantItemModel(
      itemName: json['item_name'] as String?,
      itemQuantity: json['item_quantity'] as String?,
    );

Map<String, dynamic> _$ParticipantItemModelToJson(
        ParticipantItemModel instance) =>
    <String, dynamic>{
      'item_name': instance.itemName,
      'item_quantity': instance.itemQuantity,
    };

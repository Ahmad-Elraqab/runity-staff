// ignore: depend_on_referenced_packages
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'participant_item_entity.g.dart';

@CopyWith()
class ParticipantItemEntity extends Equatable {
  const ParticipantItemEntity({
    this.itemName,
    this.itemQuantity,
  });

  final String? itemName;
  final String? itemQuantity;

  @override
  List<Object?> get props => [itemName, itemQuantity];
}

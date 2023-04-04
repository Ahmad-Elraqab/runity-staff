import 'package:event_app/domain/entities/staff_entity/staff_entity.dart';

abstract class StaffRepository {
  Future<(StaffEntity, String)> signin({Map<String, dynamic>? data});
}

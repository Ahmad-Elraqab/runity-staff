import 'package:event_app/domain/entities/staff_entity/staff_entity.dart';

abstract class StaffRepository {
  Future<Map<String, dynamic>> signin({Map<String, dynamic>? data});
}

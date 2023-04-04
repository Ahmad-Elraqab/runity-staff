import 'dart:convert';

import 'package:event_app/data/models/staff_model/staff_model.dart';
import 'package:event_app/data/repositories/rest_repository.dart';
import 'package:event_app/domain/entities/staff_entity/staff_entity.dart';
import 'package:event_app/domain/repositories/staff_repository.dart';

class StaffRepositoryImpl implements StaffRepository {
  RestService restService;

  StaffRepositoryImpl({
    required this.restService,
  });

  @override
  Future<(StaffEntity, String)> signin({Map<String, dynamic>? data}) async {
    try {
      final response =
          await restService.dio.post('Staff/user/login', data: data);

      final StaffModel staffModel =
          StaffModel.fromJson(jsonDecode(response.data)['response']['user']);

      final staffEntity = staffModel.toEntity();
      final token = jsonDecode(response.data)['response']['authToken'];
      return (staffEntity, token.toString());
    } catch (e) {
      rethrow;
    }
  }
}

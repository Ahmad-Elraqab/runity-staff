import 'package:event_app/domain/entities/staff_entity/staff_entity.dart';
import 'package:event_app/domain/repositories/staff_repository.dart';

class SigninStaffUseCase {
  final StaffRepository repository;

  SigninStaffUseCase({required this.repository});

  Future<(StaffEntity, String)> execute(
      {String? email, String? password}) async {
    return repository.signin(data: {
      'data': {'email': email, 'password': password, 'fcmToken': ''}
    });
  }
}

import 'package:event_app/domain/repositories/auth_repository.dart';

class SaveTokenUseCase {
  final AuthRepository repository;

  SaveTokenUseCase({required this.repository});

  Future execute({String? token}) async {
    return repository.saveToken(token!);
  }
}

class CheckStaffTokenUseCase {
  final AuthRepository repository;

  CheckStaffTokenUseCase({required this.repository});

  Future execute() async {
    return repository.checkToken();
  }
}

class ClearStaffTokenUseCase {
  final AuthRepository repository;

  ClearStaffTokenUseCase({required this.repository});

  Future execute() async {
    return repository.clear();
  }
}

import 'dart:async';

import 'package:zdebts_api/domain/entities/user_response.dart';
import 'package:zdebts_api/domain/errors/repository_error.dart';
import 'package:zdebts_api/infrastructure/repositories/user_repositories.dart';

class UserService {
  final UserRepository _repository;

  UserService(this._repository);

  FutureOr<List<UserResponse>> listAll() {
    try {
      return _repository.list();
    } catch (e) {
      throw RepositoryError();
    }
  }
}

import 'dart:async';

import 'package:zdebts_api/infrastructure/datasource/user_datasource.dart';
import 'package:zdebts_api/infrastructure/errors/data_source_error.dart';
import 'package:zdebts_api/infrastructure/models/user_result.dart';

import 'abstract_repository.dart';

class UserRepository implements AbstractRepository {
  final UserDataSource _dataSource;

  UserRepository(this._dataSource);

  @override
  FutureOr<List<UserResult>> list() {
    try {
      return _dataSource.list();
    } catch (e) {
      throw DataSourceError();
    }
  }
}

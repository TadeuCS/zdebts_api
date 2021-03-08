import 'dart:async';

import 'package:zdebts_api/external/db/mysql.dart';
import 'package:zdebts_api/infrastructure/models/user_result.dart';

import 'user_datasource.dart';

class UserDataSourceMySQLImpl implements UserDataSource {
  final MySQL _mysql;

  UserDataSourceMySQLImpl(this._mysql);

  @override
  FutureOr<List<UserResult>> list() async {
    var result = await _mysql.db.query('select * from users');
    return result.map((user) => UserResult.fromMap(user.fields)).toList();
  }
}

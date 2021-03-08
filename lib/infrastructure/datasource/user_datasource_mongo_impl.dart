import 'dart:async';

import 'package:zdebts_api/external/db/mongo.dart';
import 'package:zdebts_api/infrastructure/datasource/user_datasource.dart';
import 'package:zdebts_api/infrastructure/models/user_result.dart';

class UserDataSourceMongoImpl implements UserDataSource {
  final Mongo _mongoDb;

  UserDataSourceMongoImpl(
    this._mongoDb,
  );

  @override
  FutureOr<List<UserResult>> list() {
    var result = _mongoDb.db.collection('users').find();
    return result.map((user) => UserResult.fromMap(user)).toList();
  }
}

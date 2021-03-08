import 'dart:async';

import 'package:zdebts_api/infrastructure/models/user_result.dart';

abstract class UserDataSource {
  FutureOr<List<UserResult>> list();
}

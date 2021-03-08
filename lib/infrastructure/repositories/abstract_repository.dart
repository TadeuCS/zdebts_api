import 'dart:async';

abstract class AbstractRepository {
  FutureOr<List<dynamic>> list();
}

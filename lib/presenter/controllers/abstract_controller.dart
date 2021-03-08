import 'dart:async';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

abstract class AbstractController {
  FutureOr<Response> list(Request req);

  // FutureOr<Response> findOne(Request req, String id);

  // FutureOr<Response> insert(Request req, String id);

  // FutureOr<Response> update(Request req, String id);

  // FutureOr<Response> delete(Request req, String id);

  Router get router;
}

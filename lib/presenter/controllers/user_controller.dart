import 'dart:async';

import 'package:shelf/src/request.dart';
import 'package:shelf/src/response.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_router/src/router.dart';
import 'package:zdebts_api/domain/usecases/user_service.dart';

part 'user_controller.g.dart';

class UserController {
  final UserService _service;

  UserController(this._service);

  @Route.get('/')
  FutureOr<Response> list(Request req) {
    try {
      return Response.ok(_service.listAll());
    } catch (e) {
      return Response.notFound(e.toString());
    }
  }

  Router get router => _$UserControllerRouter(this);
}

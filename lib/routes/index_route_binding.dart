import 'dart:async';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class IndexRouteBinding {
  final Router _app;

  IndexRouteBinding(this._app) {
    _app.get('/', buildIndexRoute.call);
  }

  FutureOr<Response> buildIndexRoute(Request req) {
    try {
      return Response.ok('Bem vindo!');
    } catch (e) {
      return Response.notFound('Erro ao conectar na rota!');
    }
  }
}

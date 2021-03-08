import 'index_route_binding.dart';
import 'user_route_binding.dart';

class BindingRoutes {
  BindingRoutes._privateConstructor();

  static final BindingRoutes instance = BindingRoutes._privateConstructor();

  static void buildAllRoutes(_app) {
    IndexRouteBinding(_app);
    UserRouteBinding(_app);
  }
}

import 'package:shelf_router/shelf_router.dart';
import 'package:zdebts_api/domain/usecases/user_service.dart';
import 'package:zdebts_api/external/db/mongo.dart';
import 'package:zdebts_api/infrastructure/datasource/user_datasource_mongo_impl.dart';
import 'package:zdebts_api/infrastructure/repositories/user_repositories.dart';
import 'package:zdebts_api/presenter/controllers/user_controller.dart';

class UserRouteBinding {
  final Router _app;
  UserRouteBinding(this._app) {
    var mongoDb = Mongo();
    var userDataSource = UserDataSourceMongoImpl(mongoDb);
    var userRepository = UserRepository(userDataSource);
    var userService = UserService(userRepository);
    _app.mount('/user/', UserController(userService).router.call);
  }
}

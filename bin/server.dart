import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';
import 'package:zdebts_api/routes/binding_routes.dart';

void main(List<String> args) async {
  // For Google Cloud Run, set _hostname to '0.0.0.0'.
  const _hostname = 'localhost';
  const _port = '8080';
  final _app = Router();

  //Bindings Routes
  BindingRoutes.buildAllRoutes(_app);

  //Start Server Listening
  var port = int.tryParse(_port);
  var server = await io.serve(_app.call, _hostname, port);
  print('Serving at http://${server.address.host}:${server.port}');
}

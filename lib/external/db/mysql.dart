import 'package:mysql1/mysql1.dart';

class MySQL {
  MySqlConnection _db;

  MySQL() {
    openConnection();
  }

  void openConnection() async {
    var settings = ConnectionSettings(
        host: 'localhost',
        port: 3306,
        user: 'bob',
        password: 'wibble',
        db: 'mydb');
    _db = await MySqlConnection.connect(settings);
  }

  MySqlConnection get db => _db;
}

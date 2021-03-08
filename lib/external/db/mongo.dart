import 'package:mongo_dart/mongo_dart.dart';

class Mongo {
  Db _db;

  Mongo() {
    openConnection();
  }

  void openConnection() async {
    _db = await Db.create(
        // ignore: prefer_single_quotes
        "mongodb+srv://root:mutkch@cluster0.ts2le.mongodb.net/myFirstDatabase?retryWrites=true&w=majority");
    await _db.open();
  }

  Db get db => _db;
}

import 'dart:convert';

class AccountResult {
  String id;
  String access_mode;
  String dt_creation;
  String dt_expiration;
  AccountResult({
    this.id,
    this.access_mode,
    this.dt_creation,
    this.dt_expiration,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'access_mode': access_mode,
      'dt_creation': dt_creation,
      'dt_expiration': dt_expiration,
    };
  }

  factory AccountResult.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return AccountResult(
      id: map['id'],
      access_mode: map['access_mode'],
      dt_creation: map['dt_creation'],
      dt_expiration: map['dt_expiration'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AccountResult.fromJson(String source) =>
      AccountResult.fromMap(json.decode(source));
}

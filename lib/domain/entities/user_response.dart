import 'dart:convert';

class UserResponse {
  String id;
  String first_name;
  String last_name;
  String email;
  String account_id;
  String avatar_url;
  String rule;
  UserResponse({
    this.id,
    this.first_name,
    this.last_name,
    this.email,
    this.account_id,
    this.avatar_url,
    this.rule,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'first_name': first_name,
      'last_name': last_name,
      'email': email,
      'account_id': account_id,
      'avatar_url': avatar_url,
      'rule': rule,
    };
  }

  factory UserResponse.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return UserResponse(
      id: map['id'],
      first_name: map['first_name'],
      last_name: map['last_name'],
      email: map['email'],
      account_id: map['account_id'],
      avatar_url: map['avatar_url'],
      rule: map['rule'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserResponse.fromJson(String source) =>
      UserResponse.fromMap(json.decode(source));
}

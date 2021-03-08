import 'dart:convert';

import 'package:zdebts_api/domain/entities/user_response.dart';

/*
Caso o resultado vindo do DATASET, contenha campos distintos do que será
retornado na API com UserResponse basta alterar os campos nesta MODEL 
sem interferir no UserResponse.
*/
class UserResult extends UserResponse {
  @override
  String id;
  @override
  String first_name;
  @override
  String last_name;
  @override
  String email;
  @override
  String account_id;
  @override
  String avatar_url;
  @override
  String rule;

  UserResult({
    this.id,
    this.first_name,
    this.last_name,
    this.email,
    this.account_id,
    this.avatar_url,
    this.rule,
  });

  @override
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

  factory UserResult.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return UserResult(
      id: map['id'],
      first_name: map['first_name'],
      last_name: map['last_name'],
      email: map['email'],
      account_id: map['account_id'],
      avatar_url: map['avatar_url'],
      rule: map['rule'],
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory UserResult.fromJson(String source) =>
      UserResult.fromMap(json.decode(source));
}

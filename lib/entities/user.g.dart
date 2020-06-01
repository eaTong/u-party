// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    account: json['account'] as String,
    name: json['name'] as String,
    hasPassword: json['hasPassword'] as bool,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'account': instance.account,
      'name': instance.name,
      'hasPassword': instance.hasPassword,
    };

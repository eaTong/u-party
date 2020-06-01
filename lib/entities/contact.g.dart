// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return Contact(
    name: json['name'] as String,
  )
    ..telephone = json['telephone'] as String
    ..gender = json['gender'] as int
    ..description = json['description'] as String
    ..birthday = json['birthday'] == null
        ? null
        : DateTime.parse(json['birthday'] as String)
    ..avatar = json['avatar'] as String;
}

Map<String, dynamic> _$ContactToJson(Contact instance) => <String, dynamic>{
      'name': instance.name,
      'telephone': instance.telephone,
      'gender': instance.gender,
      'description': instance.description,
      'birthday': instance.birthday?.toIso8601String(),
      'avatar': instance.avatar,
    };

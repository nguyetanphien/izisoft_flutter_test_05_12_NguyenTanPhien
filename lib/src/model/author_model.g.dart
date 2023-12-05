// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorModel _$AuthorModelFromJson(Map<String, dynamic> json) => AuthorModel()
  ..email = json['email'] as String?
  ..name = json['name'] as String?
  ..avatar = json['avatar'] as String?
  ..gender = json['gender'] as String?
  ..describe = json['describe'] as String?
  ..job = json['job'] as String?
  ..id = json['id'] as String?;

Map<String, dynamic> _$AuthorModelToJson(AuthorModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'avatar': instance.avatar,
      'gender': instance.gender,
      'describe': instance.describe,
      'job': instance.job,
      'id': instance.id,
    };

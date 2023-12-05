// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse()
  ..startTime = json['startTime'] as int?
  ..endTime = json['endTime'] as int?
  ..thumbnail = json['thumbnail'] as String?
  ..amount_target = json['amount_target'] as int?
  ..current_amount = json['current_amount'] as int?
  ..author = json['author'] == null
      ? null
      : AuthorModel.fromJson(json['author'] as Map<String, dynamic>)
  ..title = json['title'] as String?
  ..backers = (json['backers'] as List<dynamic>?)
      ?.map((e) => AuthorModel.fromJson(e as Map<String, dynamic>))
      .toList()
  ..id = json['id'] as String?;

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'thumbnail': instance.thumbnail,
      'amount_target': instance.amount_target,
      'current_amount': instance.current_amount,
      'author': instance.author,
      'title': instance.title,
      'backers': instance.backers,
      'id': instance.id,
    };

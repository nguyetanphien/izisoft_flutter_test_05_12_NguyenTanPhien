import 'package:json_annotation/json_annotation.dart';

import '../../../model/author_model.dart';

part 'base_response.g.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: 'startTime')
  int? startTime;

  @JsonKey(name: 'endTime')
  int? endTime;

  @JsonKey(name: 'thumbnail')
  String? thumbnail;

  @JsonKey(name: 'amount_target')
  int? amount_target;

  @JsonKey(name: 'current_amount')
  int? current_amount;

  @JsonKey(name: 'author')
  AuthorModel? author;

  @JsonKey(name: 'title')
  String? title;

  @JsonKey(name: 'backers')
  List<AuthorModel>? backers;

  @JsonKey(name: 'id')
  String? id;

  BaseResponse();

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}

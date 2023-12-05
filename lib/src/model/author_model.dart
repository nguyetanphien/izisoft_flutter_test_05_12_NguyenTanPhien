import 'package:json_annotation/json_annotation.dart';

part 'author_model.g.dart';

@JsonSerializable()
class AuthorModel {
  @JsonKey(name: 'email')
  String? email;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'avatar')
  String? avatar;

  @JsonKey(name: 'gender')
  String? gender;
  
  @JsonKey(name: 'describe')
  String? describe;

  @JsonKey(name: 'job')
  String? job;

  @JsonKey(name: 'id')
  String? id;

  AuthorModel();

  factory AuthorModel.fromJson(Map<String, dynamic> json) =>
      _$AuthorModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorModelToJson(this);
}

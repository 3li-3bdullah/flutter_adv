import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
abstract class LoginRequestBody {
  final String email;
  final String password;

  LoginRequestBody({required this.email,required this.password});

  Map<String,dynamic> toJson() => _$LoginRequestBodyToJson(this);
}
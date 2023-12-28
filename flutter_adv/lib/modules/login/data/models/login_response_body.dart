import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class LoginResponseBody {
  final String? message;
  final UserData? userData;
  final bool? status;
  final int? code;

  LoginResponseBody({this.message,this.userData,this.status,this.code});
 
  factory LoginResponseBody.fromJson(Map<String,dynamic> json) => _$LoginResponseBodyFromJson(json);

}

@JsonSerializable()
class UserData {
  final String? token;
  @JsonKey(name: 'username')
  final String? userName;

  UserData({this.userName, this.token});

  factory UserData.fromJson(Map<String,dynamic> json) => _$UserDataFroJson(json);
}
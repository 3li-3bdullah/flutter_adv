import 'package:dio/dio.dart';
import 'package:flutter_adv/modules/login/data/models/login_request_body.dart';
import 'package:flutter_adv/modules/login/data/models/login_response.dart';
import 'package:flutter_adv/shared/network/api_constants.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: Apiconstants.baseUrl)
abstract class ApiService{
  factory ApiService(Dio dio,{String baseUrl}) = _ApiService;
 
  @POST(Apiconstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody
  );

}
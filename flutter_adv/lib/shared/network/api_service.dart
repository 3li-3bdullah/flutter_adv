import 'package:dio/dio.dart';
import 'package:flutter_adv/shared/network/api_constants.dart';
import 'package:retrofit/retrofit.dart';

@RestApi(baseUrl: Apiconstants.baseUrl)
abstract class ApiService{
  factory ApiService(Dio dio,{String baseUrl}) = _ApiService;
}
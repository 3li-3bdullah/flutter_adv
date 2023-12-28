import 'package:flutter_adv/modules/login/data/models/login_request_body.dart';
import 'package:flutter_adv/modules/login/data/models/login_response.dart';
import 'package:flutter_adv/shared/network/api_error_handler.dart';
import 'package:flutter_adv/shared/network/api_result.dart';
import 'package:flutter_adv/shared/network/api_service.dart';

class LoginRepo {
  final ApiService _apiService;
  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
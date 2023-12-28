
import 'package:dio/dio.dart';
import 'package:flutter_adv/modules/login/data/repos/login_repo.dart';
import 'package:flutter_adv/modules/login/logic/cubit/login_cubit.dart';
import 'package:flutter_adv/shared/network/api_service.dart';
import 'package:flutter_adv/shared/network/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  
  // Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
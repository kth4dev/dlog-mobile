import 'package:dio/dio.dart';
import 'package:dlog/data/app-pref/app_data_store.dart';
import 'package:dlog/data/network/interceptors/header_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';


class DioBuilder {
  Dio instance(AppDataStore appDataStore) {
    Dio dio = Dio();
    dio.interceptors.addAll([
      HeaderInterceptor(appDataStore),
      PrettyDioLogger(requestHeader: true, requestBody: true)
    ]);
    return dio;
  }
}

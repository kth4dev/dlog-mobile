import 'package:dio/dio.dart';
import 'package:dlog/data/app-pref/app_data_store.dart';


class HeaderInterceptor extends Interceptor {
  AppDataStore appDataStore;

  HeaderInterceptor(this.appDataStore);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    String token = appDataStore.getToken();
    if (token.isNotEmpty) {
      options.headers["Authorization"] = "Bearer $token";
    }

    super.onRequest(options, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    super.onError(err, handler);
    // if (err.response?.statusCode == 403) {}
  }
}

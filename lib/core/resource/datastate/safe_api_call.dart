import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:dlog/core/resource/datastate/dio_exceptions.dart';
import 'package:dlog/core/resource/datastate/network_error_type.dart';
import 'package:dlog/core/resource/datastate/network_response.dart';
import 'package:dlog/core/resource/datastate/server_error_response.dart';

Future<NetworkResponse<T>> safeApiCall<T>(
  Future<HttpResponse<T>> Function() apiCall,
) async {
  try {
    final HttpResponse<T> httpResponse = await apiCall();
    final statusCode = httpResponse.response.statusCode;
    if (statusCode != null) {
      if (statusCode >= 200 && statusCode <= 299) {
        return NetworkSuccess(
          data: httpResponse.data,
        );
      } else if (statusCode >= 400 && statusCode <= 499) {
        final errorResponse = ServerErrorResponse.fromJson(
          httpResponse.response.data!,
        );
        return NetworkFailed(
          errorResponse: errorResponse,
          message: errorResponse.message,
          type: NetworkErrorType.dynamic,
        );
      } else {
        return NetworkFailed(
          message: 'Server is under maintenance',
          type: NetworkErrorType.dynamic,
        );
      }
    } else {
      return NetworkFailed(
        message: 'Response status code is null',
        type: NetworkErrorType.dynamic,
      );
    }
  } on DioException catch (dioError) {
    switch (dioError.type) {
      case DioExceptionType.badResponse || DioExceptionType.badCertificate:
        final errorResponse = ServerErrorResponse.fromJson(
          dioError.response!.data!,
        );
        return NetworkFailed(
          errorResponse: errorResponse,
          message: errorResponse.message,
          type: NetworkErrorType.dynamic,
        );
      case DioExceptionType.connectionError:
        return NetworkFailed(
          message: dioError.type.toPrettyDescription(),
          type: NetworkErrorType.noInternet,
        );
      default:
        return NetworkFailed(
          message: dioError.type.toPrettyDescription(),
          type: NetworkErrorType.dynamic,
        );
    }
  } on SocketException catch (e) {
    return NetworkFailed(
      message: e.message,
      type: NetworkErrorType.noInternet,
    );
  } catch (e) {
    return NetworkFailed(
      message: 'SafeApiCall exception',
      type: NetworkErrorType.dynamic,
    );
  }
}

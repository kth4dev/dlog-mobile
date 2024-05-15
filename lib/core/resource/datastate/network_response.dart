import 'package:dlog/core/resource/datastate/server_error_response.dart';

import 'network_error_type.dart';

sealed class NetworkResponse<T> {}

class NetworkSuccess<T> extends NetworkResponse<T> {
  final T data;

  NetworkSuccess({required this.data});
}

class NetworkFailed<T> extends NetworkResponse<T> {
  final ServerErrorResponse? errorResponse;
  final String message;
  final NetworkErrorType type;

  NetworkFailed({
    this.errorResponse,
    required this.message,
    required this.type,
  });
}

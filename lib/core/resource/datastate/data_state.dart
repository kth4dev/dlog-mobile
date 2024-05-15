import 'network_error_type.dart';

sealed class DataState<T> {
  final T? data;
  const DataState({this.data});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  final String message;
  final NetworkErrorType type;
  const DataFailed({required this.message, required this.type});
}

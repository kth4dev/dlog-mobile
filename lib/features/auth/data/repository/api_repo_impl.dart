import 'package:dlog/core/resource/datastate/data_state.dart';
import 'package:dlog/core/resource/datastate/network_response.dart';
import 'package:dlog/core/resource/datastate/safe_api_call.dart';
import 'package:dlog/data/models/dto/auth/user/user_response.dart';
import 'package:dlog/features/auth/data/models/login/login_request.dart';
import 'package:dlog/features/auth/data/models/signup/signup_request.dart';
import 'package:dlog/features/auth/data/remote/auth_service.dart';
import 'package:dlog/features/auth/domain/repository/api_repo.dart';

class AuthAPIRepositoryImpl implements AuthAPIRepository {
  final AuthService service;

  AuthAPIRepositoryImpl({required this.service});

  @override
  Future<DataState<UserResponse>> login(LoginRequest request) async {
    final response = await safeApiCall<UserResponse>(
      () => service.login(request: request),
    );
    switch (response) {
      case NetworkSuccess<UserResponse>():
        return DataSuccess(response.data);
      case NetworkFailed<UserResponse>():
        return DataFailed(message: response.message, type: response.type);
    }
  }

  @override
  Future<DataState<UserResponse>> signUp(SignupRequest request) async{
    final response = await safeApiCall<UserResponse>(
          () => service.signUp(request: request),
    );
    switch (response) {
      case NetworkSuccess<UserResponse>():
        return DataSuccess(response.data);
      case NetworkFailed<UserResponse>():
        return DataFailed(message: response.message, type: response.type);
    }
  }
}

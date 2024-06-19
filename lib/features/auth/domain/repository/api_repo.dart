import 'package:dlog/core/resource/datastate/data_state.dart';
import 'package:dlog/data/models/dto/auth/user/user_response.dart';
import 'package:dlog/features/auth/data/models/login/login_request.dart';
import 'package:dlog/features/auth/data/models/signup/signup_request.dart';

abstract class AuthAPIRepository {
  Future<DataState<UserResponse>> login(
    LoginRequest request,
  );

  Future<DataState<UserResponse>> signUp(
    SignupRequest request,
  );
}

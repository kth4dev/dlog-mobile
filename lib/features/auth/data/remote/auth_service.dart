import 'package:dio/dio.dart';
import 'package:dlog/core/utils/config.dart';
import 'package:dlog/data/models/dto/auth/user/user_response.dart';
import 'package:dlog/features/auth/data/models/login/login_request.dart';
import 'package:dlog/features/auth/data/models/signup/signup_request.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_service.g.dart';

@RestApi(baseUrl:Config.authUrl)
abstract class AuthService {
  factory AuthService(Dio dio) = _AuthService;

  @POST(loginPath)
  Future<HttpResponse<UserResponse>> login({
    @Body() required LoginRequest request,
  });

  @POST(signUpPath)
  Future<HttpResponse<UserResponse>> signUp({
    @Body() required SignupRequest request,
  });
}

/// ******************************************
///  Title : End Points
/// ******************************************
const String loginPath = "login";
const String signUpPath = "register";

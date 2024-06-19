import 'package:dio/dio.dart';
import 'package:dlog/core/utils/config.dart';
import 'package:dlog/data/models/dto/auth/auth_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_service.g.dart';

@RestApi(baseUrl: Config.authUrl)
abstract class AuthService {
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

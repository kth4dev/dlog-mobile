import 'package:dlog/core/resource/datastate/data_state.dart';
import 'package:dlog/core/resource/usecase/usecase.dart';
import 'package:dlog/data/models/dto/auth/user/user_response.dart';
import 'package:dlog/features/auth/data/models/signup/signup_request.dart';
import 'package:dlog/features/auth/domain/repository/api_repo.dart';

class SignupUserCase extends UseCase<DataState<UserResponse>, SignupRequest> {
  AuthAPIRepository apiRepo;

  SignupUserCase(this.apiRepo);

  @override
  Future<DataState<UserResponse>> call({SignupRequest? params}) async {
    final response = await apiRepo.signUp(params!);

    switch (response) {
      case DataSuccess<UserResponse>():
        return DataSuccess(response.data!);

      case DataFailed<UserResponse>():
        return DataFailed(message: response.message, type: response.type);
    }
  }
}

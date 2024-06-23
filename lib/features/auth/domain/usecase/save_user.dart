import 'package:dlog/core/extensions/str_extension.dart';
import 'package:dlog/core/resource/usecase/usecase.dart';
import 'package:dlog/data/models/dto/auth/user/user_response.dart';
import 'package:dlog/features/auth/domain/repository/ds_repo.dart';

class SaveUserInfoUseCase extends UseCase<void, UserResponse> {
  final AuthDSRepository dsRepo;

  SaveUserInfoUseCase(this.dsRepo);

  @override
  Future<void> call({UserResponse? params}) async {
    await dsRepo.setLoggedIn();
    await dsRepo.saveToken(params!.token.validString);
    if (params.user != null) {
      await dsRepo.saveUser(params.user!);
    }
  }
}

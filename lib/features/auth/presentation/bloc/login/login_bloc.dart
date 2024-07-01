import 'dart:async';

import 'package:dlog/core/extensions/str_extension.dart';
import 'package:dlog/core/resource/datastate/data_state.dart';
import 'package:dlog/features/auth/data/models/login/login_request.dart';
import 'package:dlog/features/auth/domain/usecase/login.dart';
import 'package:dlog/features/auth/domain/usecase/save_user.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginUseCase login;
  SaveUserInfoUseCase saveUserInfo;

  LoginBloc(
    this.login,
    this.saveUserInfo,
  ) : super(const LoginState()) {
    on<UserNameChanged>(_onChangeUserName);
    on<PasswordChanged>(_onChangePassword);
    on<LoginSubmitted>(_loginSubmitted);
  }

  FutureOr<void> _onChangeUserName(
    UserNameChanged event,
    Emitter<LoginState> emit,
  ) {
    emit(state.onChangeUsername(event.userName));
  }

  FutureOr<void> _onChangePassword(
    PasswordChanged event,
    Emitter<LoginState> emit,
  ) {
    emit(state.onChangePassword(event.password));
  }

  Future<void> _loginSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    if (state.isFormValid){
      emit(state.onChangeStatus(const LoginInProgress()));
      final request = LoginRequest(
        userName: state.userName,
        password: state.password,
      );
      final response = await login.call(params: request);
      switch (response) {
        case DataSuccess():
          try {
            await saveUserInfo.call(params: response.data);
            emit(state.onChangeStatus(const LoginSuccessful()));
          } catch (e) {
            emit(state.onChangeStatus(const LoginFailed("Failed To Save!")));
          }
          break;
        case DataFailed():
          emit(state.onChangeStatus(LoginFailed(response.message)));
      }
    } else {
      final validationError = state.validationError.validString;
      emit(state.onChangeStatus(LoginValidationFailed(validationError)));
    }
  }
}

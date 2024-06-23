part of 'login_bloc.dart';

class LoginState {
  final String userName;
  final String password;
  final LoginStatus status;

  const LoginState({
    this.userName = '',
    this.password = '',
    this.status = const LoginInitial(),
  });

  LoginState copyWith({
    String? userName,
    String? password,
    LoginStatus? status,
  }) {
    return LoginState(
      userName: userName ?? this.userName,
      password: password ?? this.password,
      status: status ?? this.status,
    );
  }

  LoginState onChangeUsername(String newUserName) {
    return copyWith(
      userName: newUserName,
      status: const LoginInitial(),
    );
  }

  LoginState onChangePassword(String newPassword) {
    return copyWith(
      password: newPassword,
      status: const LoginInitial(),
    );
  }

  LoginState onChangeStatus(LoginStatus status) {
    return copyWith(status: status);
  }

  bool get isUserNameValid {
    return userName.isNotEmpty;
  }

  bool get isPasswordValid {
    return password.isNotEmpty;
  }

  bool get isFormValid {
    return isUserNameValid && isPasswordValid;
  }

  String? get userNameError {
    if (userName.isEmpty) {
      return 'Username cannot be empty';
    }
    return null;
  }

  String? get passwordError {
    if (password.isEmpty) {
      return 'Password cannot be empty';
    }
    return null;
  }

  String? get validationError {
    if (!isUserNameValid) {
      return userNameError;
    }
    if (!isPasswordValid) {
      return passwordError;
    }
    return '';
  }
}

sealed class LoginStatus {
  const LoginStatus();
}

class LoginInitial extends LoginStatus {
  const LoginInitial();
}

class LoginSuccessful extends LoginStatus {
  const LoginSuccessful();
}

class LoginFailed extends LoginStatus {
  final String message;

  const LoginFailed(this.message);
}

class LoginInProgress extends LoginStatus {
  const LoginInProgress();
}

class LoginValidationFailed extends LoginStatus {
  final String message;

  const LoginValidationFailed(this.message);
}

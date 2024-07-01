import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/logo.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/core/ui/dialog/info_dialog.dart';
import 'package:dlog/core/ui/dialog/loading_dialog.dart';
import 'package:dlog/core/ui/image/asset_image.dart';
import 'package:dlog/features/auth/presentation/bloc/login/login_bloc.dart';
import 'package:dlog/features/auth/presentation/res/locale/login_locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'views/views.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DLogAppBar(title: context.getLocale(LoginLocale.login)),
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          final status = state.status;

          switch (status) {
            case LoginSuccessful():
              Navigator.of(context).pop();
              context.go(AppRoute.home);
            case LoginFailed():
              Navigator.of(context).pop();
              showInfoDialog(
                context: context,
                title: "Failed",
                content: status.message,
              );
            case LoginInProgress():
              showLoadingDialog(
                context: context,
                title: "Login",
                content: "Loading...",
              );
            case LoginValidationFailed():
            // TODO: Handle this case.
            default:
              break;
          }
        },
        child: SingleChildScrollView(
          padding: _screenPadding,
          child: Column(
            children: [
              const DLogAssetImage(
                path: DLogLogo.deDynamic,
                size: 100,
              ),
              40.spacingHeight,
              LoginTextFieldsView(
                onChangeUserName: _onChangeUserName,
                onChangePassword: _onChangePassword,
              ),
              20.spacingHeight,
              ForgetPasswordView(
                onPressed: _toForgetPassword,
              ),
              40.spacingHeight,
              LoginAndSingUpViews(
                onLogin: _onLogin,
                onSignUp: _onSignUp,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _onChangeUserName(String value) => _loginBloc.add(UserNameChanged(value));

  _onChangePassword(String value) => _loginBloc.add(PasswordChanged(value));

  _onLogin() {
    FocusScope.of(context).unfocus();
    _loginBloc.add(LoginSubmitted());
  }

  _onSignUp() => context.go(AppRoute.signUp);

  _toForgetPassword() => context.push(AppRoute.forgetPassword);

  LoginBloc get _loginBloc => context.read<LoginBloc>();

  EdgeInsets get _screenPadding => const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 100,
        bottom: 196,
      );
}

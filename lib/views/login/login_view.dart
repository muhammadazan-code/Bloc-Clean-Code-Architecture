import 'package:bloc_part_two/bloc/login_bloc.dart';
import 'package:bloc_part_two/models/user/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late LoginBloc _loginBloc;
  UserModel userModel = UserModel();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _loginBloc = LoginBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Login"))),
      body: BlocProvider(
        create: (_) => _loginBloc,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EmailInputWidget(emailFocusNode: emailFocusNode),
                SizedBox(height: 20),
                PasswordInputWidget(passwordFocusNode: passwordFocusNode),
                SizedBox(height: 50),
                LoginButton(formKey: _formKey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

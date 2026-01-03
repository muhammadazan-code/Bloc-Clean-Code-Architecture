import 'package:bloc_part_two/models/user/user_model.dart';
import 'package:flutter/material.dart';
import 'widgets/widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  UserModel userModel = UserModel();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Login"))),
      body: Padding(
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
    );
  }
}

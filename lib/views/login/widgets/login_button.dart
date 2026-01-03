import 'package:bloc_part_two/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const LoginButton({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginStates>(
      buildWhen: (previous, current) => false,
      builder: (context, state) {
        return ElevatedButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {}
          },
          child: Center(child: Text("Login")),
        );
      },
    );
  }
}

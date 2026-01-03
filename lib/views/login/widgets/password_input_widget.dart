import 'package:bloc_part_two/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordInputWidget extends StatelessWidget {
  final FocusNode passwordFocusNode;
  const PasswordInputWidget({super.key, required this.passwordFocusNode});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginStates>(
      buildWhen: (previous, current) => current.password != previous.password,
      builder: (context, state) => TextFormField(
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        focusNode: passwordFocusNode,
        decoration: InputDecoration(
          hintText: "Password",
          border: OutlineInputBorder(),
        ),
        onChanged: (value) {
          context.read<LoginBloc>().add(PasswordChanged(password: value));
        },
        validator: (value) {
          if (value!.isEmpty) {
            return "Please enter your Password";
          } else if (value.length <= 7) {
            return "Password must contains 8 characters.";
          }
          return null;
        },
        onFieldSubmitted: (value) {},
      ),
    );
  }
}

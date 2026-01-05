import 'package:flutter/material.dart';

class PasswordInputWidget extends StatelessWidget {
  final FocusNode passwordFocusNode;
  const PasswordInputWidget({super.key, required this.passwordFocusNode});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      focusNode: passwordFocusNode,
      decoration: InputDecoration(
        hintText: "Password",
        border: OutlineInputBorder(),
      ),
      onChanged: (value) {},
      validator: (value) {
        if (value!.isEmpty) {
          return "Please enter your Password";
        }
        return null;
      },
      onFieldSubmitted: (value) {},
    );
  }
}

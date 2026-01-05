import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const LoginButton({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (formKey.currentState!.validate()) {
          if (kDebugMode) {
            print("I am here");
          }
        }
      },
      child: Center(child: Text("Login")),
    );
  }
}

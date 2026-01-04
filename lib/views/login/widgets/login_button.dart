import 'package:bloc_part_two/bloc/login_bloc.dart';
import 'package:bloc_part_two/config/colors/color.dart';
import 'package:bloc_part_two/utils/enums/enum.dart';
import 'package:bloc_part_two/utils/flush_bar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const LoginButton({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginStates>(
      listenWhen: (current, previous) =>
          current.postApiStatus != previous.postApiStatus,
      listener: (context, state) {
        if (state.postApiStatus == PostApiStatus.error) {
          FlushBarHelper.flushBarErrorMessage(
            state.message.toString(),
            context,
          );
        }
        if (state.postApiStatus == PostApiStatus.success) {
          FlushBarHelper.flushBarSuccessMessage("Login Successfully", context);
        }
      },
      child: BlocBuilder<LoginBloc, LoginStates>(
        buildWhen: (previous, current) => false,
        builder: (context, state) {
          return ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                context.read<LoginBloc>().add(SubmitButton());
              }
            },
            child: state.postApiStatus == PostApiStatus.loading
                ? Center(
                    child: CircularProgressIndicator(
                      color: AppColors.greenColor,
                    ),
                  )
                : Center(child: Text("Login")),
          );
        },
      ),
    );
  }
}

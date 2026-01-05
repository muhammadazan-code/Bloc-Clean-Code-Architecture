import 'package:bloc/bloc.dart';
import 'package:bloc_part_two/repository/auth/login_repository.dart';
import 'package:bloc_part_two/utils/enums/enum.dart';
import 'package:equatable/equatable.dart';
part 'login_event.dart';
part 'login_states.dart';

class LoginBloc extends Bloc<LoginEvent, LoginStates> {
  LoginRepository loginRepository = LoginRepository();
  LoginBloc() : super(const LoginStates()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<SubmitButton>(_loginApi);
  }

  void _onEmailChanged(EmailChanged event, Emitter<LoginStates> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginStates> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _loginApi(SubmitButton event, Emitter<LoginStates> emit) async {
    Map data = {"email": state.email, "password": state.password};
    // Map data = {"email": "eve.holt@reqres.in", "password": "cityslicka"};
    emit(state.copyWith(postApiStatus: PostApiStatus.loading));
    await loginRepository
        .loginApi(data)
        .then((value) {
          if (value.error.isNotEmpty) {
            emit(
              state.copyWith(
                message: value.error.toString(),
                postApiStatus: PostApiStatus.error,
              ),
            );
          } else {
            emit(
              state.copyWith(
                message: "Login Successfully",
                postApiStatus: PostApiStatus.success,
              ),
            );
          }
        })
        .onError((error, stackTrace) {
          emit(
            state.copyWith(
              message: error.toString(),
              postApiStatus: PostApiStatus.error,
            ),
          );
        });
  }
}

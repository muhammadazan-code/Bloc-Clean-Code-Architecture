part of 'login_bloc.dart';

class LoginStates extends Equatable {
  final String email;
  final String password;
  final String message;
  final PostApiStatus postApiStatus;
  const LoginStates({
    this.email = '',
    this.password = '',
    this.postApiStatus = PostApiStatus.initial,
    this.message = "",
  });

  LoginStates copyWith({
    String? email,
    String? password,
    PostApiStatus? postApiStatus,
    String? message,
  }) {
    return LoginStates(
      email: email ?? this.email,
      postApiStatus: postApiStatus ?? this.postApiStatus,
      password: password ?? this.password,
      message: message ?? this.email,
    );
  }

  @override
  List<Object?> get props => [email, password, postApiStatus, message];
}

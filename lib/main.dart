import 'package:bloc_part_two/config/routes/routes_action.dart';
import 'package:bloc_part_two/config/routes/routes_name.dart';
import 'package:bloc_part_two/repository/auth/login_mock_api_repository.dart';
import 'package:bloc_part_two/repository/auth/login_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
void main() {
  serviceLocatore();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RoutesName.splashView,
      onGenerateRoute: RoutesAction.generateRoute,
    );
  }
}

void serviceLocatore() {
  // getIt.registerLazySingleton<LoginRepository>(() => LoginHttpRepository());
  getIt.registerLazySingleton<LoginRepository>(() => LoginMockApiRepository());
}

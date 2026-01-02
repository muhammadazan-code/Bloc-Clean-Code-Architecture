import 'package:bloc_part_two/config/routes/routes_name.dart';
import 'package:bloc_part_two/views/home/home_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(
        onPressed: () {
          // Traditional way of doing things
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => HomeView()),
          // );
          Navigator.pushNamed(context, RoutesName.loginView);
        },
        child: Text("Home"),
      ),
    );
  }
}

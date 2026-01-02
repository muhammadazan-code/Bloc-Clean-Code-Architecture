import 'package:bloc_part_two/config/components/internet_exception.dart';
import 'package:bloc_part_two/config/components/loading_widget.dart';
import 'package:bloc_part_two/config/components/round_button.dart';
import 'package:bloc_part_two/config/routes/routes_name.dart';
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
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              LoadingWidget(),
              SizedBox(height: 20),
              RoundButton(
                title: 'Login',
                onPress: () =>
                    Navigator.pushNamed(context, RoutesName.loginView),
                height: 50,
                width: 50,
              ),
              SizedBox(height: 20),

              RoundButton(
                title: 'Home',
                onPress: () =>
                    Navigator.pushNamed(context, RoutesName.homeView),
                height: 50,
                width: 50,
              ),
              SizedBox(height: 20),

              TextButton(
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
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: InternetExceptionWidget(onPress: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

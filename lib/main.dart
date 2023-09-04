import 'package:flutter/material.dart';
import 'package:login_project_flutter/pages/login.dart';
import 'package:login_project_flutter/pages/signup.dart';
import 'package:login_project_flutter/pages/welcome.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/': (context) => const Welcome(),
        '/login': (context) => const Login(),
        '/signup': (context) => const SignUp(),
      },
      // home: WelcomePage(),
    );
  }
}

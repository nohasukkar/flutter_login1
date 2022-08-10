import 'package:flutter/material.dart';
import 'package:flutter_login/pages/login_page.dart';
import 'package:flutter_login/pages/signup_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  // initially show the login page
  bool showSigninPage = true;

  void toggleScreens() {
    setState(() {
      showSigninPage = !showSigninPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSigninPage) {
      return LoginPage(showSignupPage: toggleScreens);
    } else {
      return SignupPage(showSigninPage: toggleScreens);
    }
  }
}

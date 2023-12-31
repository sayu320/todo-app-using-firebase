import 'package:flutter/material.dart';
import 'package:todo_app_using_firebase/auth/authforms.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Authentication'
          ),
          ),
          body: AuthForm(),
    );
  }
}
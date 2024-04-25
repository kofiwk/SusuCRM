import 'package:crm/screens/login_or_register.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Good Times Susu Enterprise',
      home: LoginOrRegisterPage(),
    );
  }
}

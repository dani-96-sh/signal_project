import 'package:flutter/material.dart';
import 'package:signal_project/login_page.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Nexa-Heavy'),
        debugShowCheckedModeBanner: false,
        home: LoginPage());
  }
}

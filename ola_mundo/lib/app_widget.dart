import 'package:flutter/material.dart';
import 'package:ola_mundo/initial_page.dart';
import 'package:ola_mundo/login_page.dart';

import 'app_controller.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) { 
      return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: AppController.instance.isDartThem ? Brightness.dark : Brightness.light,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InitialPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      },
    );
     },);
  }
}
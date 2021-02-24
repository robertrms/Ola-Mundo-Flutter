import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              child: Image.asset('assets/images/tinderlogo.webp'),
            ),
            Container(
              width: 169,
              height: 100,
              child: ListTile(
                title: Text('Location Changer'),
                subtitle: Text('Plugin app free Tinder'),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/login');
              },
              child: Text('Login with Facebook'),
            )
          ],
        ),
      ),
    );
  }
}
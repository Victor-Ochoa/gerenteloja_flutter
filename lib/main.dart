import 'package:flutter/material.dart';
import 'package:gerenteloja/screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          backgroundColor: Colors.grey[800],
          primarySwatch: Colors.grey,
          primaryColor: Colors.pinkAccent,
          buttonColor: Colors.pinkAccent),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

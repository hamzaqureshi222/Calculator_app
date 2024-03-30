import 'package:calculator_app/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() {
  runApp( const MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const homescreen();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_advanced_concepts/home_screem.dart';
import 'package:flutter_advanced_concepts/screen_two.dart';

void main() {
  runApp(const MyApp());  //app runs from here

}
//then it comes to this widget where it gets material app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: HomeScreen.id,
      // routes: {
      //   HomeScreen.id : (context) => HomeScreen()
      //   ,ScreenTwo.id : (context) => ScreenTwo()
      // },
      home: HomeScreen(), // Changed semicolon to comma
    );
  }
}

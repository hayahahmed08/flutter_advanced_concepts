import 'package:flutter/material.dart';
//allows to create widgets


//creating a widget HomeScreen
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text("Navigation Drawer", style: TextStyle(color: Colors.white),)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center
        ,crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //text button has a property onpressed that accept
        TextButton(
          onPressed: (){

          },
          child: Text('Screen 1'),
        )
        ],
      )
    );
  }
}


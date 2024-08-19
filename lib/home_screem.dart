import 'package:flutter/material.dart';
import 'package:flutter_advanced_concepts/screen_two.dart';
//allows to create widgets


//creating a widget HomeScreen
class HomeScreen extends StatefulWidget {
  static const String id = 'home_screem';

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
          //text button has a property onpressed that accepts
        Center(
          child: TextButton(
            onPressed: (){
               Navigator.pushNamed(context, ScreenTwo.id);
             //Navigator.push(context, MaterialPageRoute(builder: (context)=> ScreenTwo()));
            },
            child: Text('Screen 1'),
          ),
        )
        ],
      )
    );
  }
}


import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two';
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Navigation Drawer", style: TextStyle(color: Colors.white),),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center
          ,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //text button has a property onpressed that accepts
            Center(
              child: TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Screen 2'),
              ),
            )
          ],
        )
    );
  }
}

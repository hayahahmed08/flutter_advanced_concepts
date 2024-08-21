import 'package:flutter/material.dart';
import 'package:flutter_advanced_concepts/screen_two.dart';

// Allows creating widgets

// Creating a widget HomeScreen
class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';  // Corrected the typo

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text(
            "Navigation Drawer",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              //DrawerHeader(
                //child: Text('Options'),
              //),
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,

                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/25/25231.png'),
                ),
                accountName: Text('hayahahmed'),
                accountEmail: Text('hayahahmeduser@gmail.com'),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Page 1'),
                onTap: (){
                  Navigator.pushNamed(context, ScreenTwo.id);

                },
              ),
              ListTile(
                leading: Icon(Icons.calculate),
                title: Text('Page 2'),
                onTap: (){
                  Navigator.pushNamed(context, HomeScreen.id);

                },
              )
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // TextButton has a property onPressed that accepts a callback
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, ScreenTwo.id);
                // Navigator.push(context, MaterialPageRoute(builder: (context)=> ScreenTwo()));
              },
              child: Text('Screen 1'),
            ),
          ),
        ],
      ),
    );
  }
}

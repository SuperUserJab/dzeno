import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_project/pages/Lokacije.dart';
import 'package:flutter_app_project/pages/Novosti.dart';
import 'package:flutter_app_project/pages/Profil.dart';
import 'dashboard.dart';
import 'MyCard.dart';
import 'home_screen.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab=0;
  final List<Widget> screens = [
    Profil(),
    Novosti(),
    Lokacije(),
    Dashboard(),
    HomeScreen(),
    CameraApp()

  ];

  Widget currentScreen = Profil();
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: PageStorage(
       child: currentScreen,
       bucket: bucket,
     ),



      bottomNavigationBar: BottomAppBar(

        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                children: <Widget>[
                  MaterialButton(
                    minWidth: 5,
                    onPressed: (){
                      setState(() {
                        currentScreen=HomeScreen();
                        currentTab=0;
                      },);
                    },
                    child: Column(children: <Widget>[
                      Icon(Icons.apps, color: currentTab == 0 ? Colors.orange : Colors.orangeAccent,),
                      Text('Scan', style: TextStyle(color: currentTab == 0 ? Colors.orange: Colors.orangeAccent,
                      ),),
                    ],),
                  ),
                  MaterialButton(
                    minWidth: 5,
                    onPressed: (){
                      setState(() {
                        currentScreen=Profil();
                        currentTab=1;
                      },);
                    },
                    child: Column(children: <Widget>[
                      Icon(Icons.person, color: currentTab == 1 ? Colors.orange : Colors.orangeAccent,),
                      Text('Profil', style: TextStyle(color: currentTab == 1 ? Colors.orange: Colors.orangeAccent,
                      ),),
                    ],),
                  ),


                  MaterialButton(
                    minWidth: 5,
                    onPressed: (){
                      setState(() {
                        currentScreen=Novosti();
                        currentTab=2;
                      },);
                    },
                    child: Column (children: <Widget>[
                      Icon(Icons.feedback, color: currentTab == 2 ? Colors.orange : Colors.orangeAccent,),
                      Text('Novosti', style: TextStyle(color: currentTab == 2 ? Colors.orange: Colors.orangeAccent,
                      ),),
                    ],),
                  ),
                  MaterialButton(
                    minWidth: 5,
                    onPressed: (){
                      setState(() {
                        currentScreen=Lokacije();
                        currentTab=3;
                      },);
                    },
                    child: Column(children: <Widget>[
                      Icon(Icons.location_city, color: currentTab == 3 ? Colors.orange : Colors.orangeAccent,),
                      Text('Lokacije', style: TextStyle(color: currentTab == 3 ? Colors.orange: Colors.orangeAccent,
                      ),),
                    ],),
                  ),
                  MaterialButton(
                    minWidth: 5,
                    onPressed: (){
                      setState(() {
                        currentScreen=CameraApp();
                        currentTab=3;
                      },);
                    },
                    child: Column(children: <Widget>[
                      Icon(Icons.image, color: currentTab == 4 ? Colors.orange : Colors.orangeAccent,),
                      Text('Uslikaj karticu', style: TextStyle(color: currentTab == 4 ? Colors.orange: Colors.orangeAccent,
                      ),),
                    ],),
                  ),



                ],
              )
            ],

          ),
        ),
      ),
    );
  }
}

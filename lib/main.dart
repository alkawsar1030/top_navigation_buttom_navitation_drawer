import 'package:flutter/material.dart';
import 'package:top_navigation_buttom_navitation_drawer/alarmActivity.dart';
import 'package:top_navigation_buttom_navitation_drawer/emailActivity.dart';
import 'package:top_navigation_buttom_navitation_drawer/homeActivity.dart';





void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // optional
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});


  List<Tab> activytyButton= [
    Tab(icon: Icon(Icons.home), text: 'Home'),
    Tab(icon: Icon(Icons.alarm), text: 'Alarm'),
    Tab(icon: Icon(Icons.email), text: 'Email'),

  ];
  List<Widget> activytyViews=[
    Homeactivity(),
    Alarmactivity(),
    Emailactivity()

  ];



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:activytyButton.length,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('NavigationExample02')),
          bottom: TabBar(
            isScrollable: false,
            tabAlignment: TabAlignment.fill,

            tabs: activytyButton,
          ),
        ),
        body: TabBarView(children: activytyViews),
      ),

    );

  }

}

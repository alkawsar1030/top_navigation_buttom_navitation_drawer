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
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(height: 8),
                    Text('Welcome, Kawsar Ullah!',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],

                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.alarm),
                title: const Text('Alarm'),
                onTap: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => const Alarmactivity()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.email),
                title: const Text('Email'),
                onTap: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => const Emailactivity()));
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Settings coming soon!')),
                  );
                },
              ),
            ],
          ),
        ),
      ),

    );

  }

}

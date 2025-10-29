import 'package:flutter/material.dart';


import 'widgets/custom_bottom_nav.dart';


class Homeactivity extends StatelessWidget {
  const Homeactivity({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Center(
        child: Container(
          child: Text('This is Home Activity'),
        ),
      ),



      // bottomNavigationBar: BottomNavigationBar(
      //   //currentIndex: 2,
      //   onTap: (index){
      //     if(index==0){
      //   return;
      //       // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
      //       // Navigator.pop(context);
      //     }
      //    else if(index==1){Navigator.push(context, MaterialPageRoute(builder: (context)=>Alarmactivity()));}
      //     else {Navigator.push(context, MaterialPageRoute(builder: (context)=>Emailactivity()));}
      //
      //
      //   },
      //
      //
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'Alarm'),
      //     BottomNavigationBarItem(icon: Icon(Icons.email), label: 'Email'),
      //   ],
      // ),

      bottomNavigationBar: const CustomBottomNav(currentIndex: 0),
    );

  }


}





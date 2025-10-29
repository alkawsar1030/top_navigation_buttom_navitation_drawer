import 'package:flutter/material.dart';

import 'package:top_navigation_buttom_navitation_drawer/main.dart';



class CustomBottomNav extends StatelessWidget {
  final int currentIndex; // Optional: কোন পেজ অ্যাকটিভ আছে দেখাবে

  const CustomBottomNav({super.key, this.currentIndex = 0});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        if (index == currentIndex) return; // একই পেজে থাকলে কিছু করবে না

        if (index == 0) {

          Navigator.pushReplacement(
           context,
           MaterialPageRoute(builder: (context) =>  HomePage()),
          );
        } else if (index == 1) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        } else if(index==2){
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) =>  HomePage()),
          );
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'Alarm'),
        BottomNavigationBarItem(icon: Icon(Icons.email), label: 'Email'),
      ],
    );
  }
}

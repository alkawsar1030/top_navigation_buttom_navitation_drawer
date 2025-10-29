import 'package:flutter/material.dart';

import 'widgets/custom_bottom_nav.dart';


class Alarmactivity extends StatelessWidget {
  const Alarmactivity({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: const Center(child: Text('Alarm Page')),
      bottomNavigationBar: const CustomBottomNav(currentIndex: 1),
    );
  }
}


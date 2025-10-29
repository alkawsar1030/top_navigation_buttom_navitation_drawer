import 'package:flutter/material.dart';
import 'widgets/custom_bottom_nav.dart';

class Emailactivity extends StatelessWidget {
  const Emailactivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: const Center(child: Text('Email Page')),
      bottomNavigationBar: const CustomBottomNav(currentIndex: 2),
    );
  }
}

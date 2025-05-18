import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {

  final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: screenHeight * 0.5, 
            width: screenWidth * 1, 
            color: const Color(0xFF24BAEC),
            child: Text("Welcome to Travenor"),
          ),
        
          Container(
            height: screenHeight * 0.3, 
            width: screenWidth * 1,
            color: const Color.fromARGB(255, 216, 192, 35),
            child: Text("Discover the world with us!"),
          ),
       
          Container(
            height: screenHeight * 0.2, 
            width: screenWidth * 1, 
            color: const Color.fromARGB(255, 2, 86, 169),
            child: Text("Get started now!"),
          ),
        ],
      ),
    );
  }
}

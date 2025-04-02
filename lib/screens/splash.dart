import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        color: const Color(0xFF0D6EFD),
        child: Center(child: Text("Travenor",style: TextStyle(fontSize: 40,color: Colors.white),)),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: const Color(0xFF24BAEC),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SVG Icon
            SizedBox(
              height: screenHeight * 0.7, // 60% of screen height
              child: Center(
                child: SvgPicture.asset(
                  'assets/images/splashScreenIcon.svg',
                  width: screenWidth * 0.4, // 40% of screen width
                  height: screenWidth * 0.4,
                  fit: BoxFit.contain,
                ),
              ),
            ),
      
            // App Name Text
            SizedBox(
              height: screenHeight * 0.05, // 05% of screen height
              child: Center(
                child: Text(
                  "Travenor",
                  style: TextStyle(
                    fontSize: screenWidth * 0.1, // responsive font size
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

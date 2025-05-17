import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF24BAEC),
        child: Column(
          children: [
          Text("data"),
            SvgPicture.asset(
          'assets/images/splashScreenIcon.svg',
          width: 150,
          height: 150,
        ),

            Expanded(
              child: Center(
                child: Text(
                  "Travenor",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

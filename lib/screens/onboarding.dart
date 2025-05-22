import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:travenor/conponents/curvedUnderLine.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    Widget svgImage;

    try {
      svgImage = SvgPicture.asset(
        'assets/images/onboardingscreenNew.svg',
        width: screenWidth * 0.4,
        height: screenWidth * 0.4,
        fit: BoxFit.contain,
        placeholderBuilder: (context) => const CircularProgressIndicator(),
        // ⚠️ errorBuilder is available in recent versions
        errorBuilder: (context, error, stackTrace) {
          print("Error loading SVG: $error");
          return const Icon(Icons.error, color: Colors.red, size: 80);
        },
      );
    } catch (e) {
      print("SVG load error: $e");
      svgImage = const Icon(Icons.error, size: 80, color: Colors.red);
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: svgImage,

            // SvgPicture.asset(
            //   'assets/images/onboardingscreen.svg',
            //   width: screenWidth * 0.4, // 40% of screen width
            //   height: screenWidth * 0.4,
            //   fit: BoxFit.contain,
            //   placeholderBuilder: (context) => CircularProgressIndicator(),
            //   semanticsLabel: 'Onboarding Icon',
            // ),
          ),

          Container(
            height: screenHeight * 0.3,
            width: screenWidth * 1,
            // color: const Color.fromARGB(255, 216, 192, 35),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      left: 50.0,
                      right: 50.0,
                      bottom: 20.0,
                    ),
                    child: Text(
                      "Life is short and the world is wide",
                      style: TextStyle(fontFamily: "Comgeometr", fontSize: 30),
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      left: 50.0,
                      right: 50.0,
                      bottom: 20.0,
                    ),
                    child: Text(
                      "At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world",
                      style: TextStyle(
                        fontFamily: "GillsSansMT",
                        fontSize: 16,
                        color: Color(0xFF7D848D),
                      ),
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 56,
            width: 335,
            // color: const Color(0xFF24BAEC),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      16,
                    ), // Change this value for more/less roundness
                  ),
                ),
                backgroundColor: WidgetStateProperty.all(Color(0xFF24BAEC)),
              ),
              child: Text("Next", style: TextStyle(color: Color(0xFFFFFFFF))),
            ),
          ),
        ],
      ),
    );
  }
}

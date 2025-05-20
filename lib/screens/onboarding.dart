import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travenor/conponents/curvedUnderLine.dart';

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
            // color: const Color(0xFF24BAEC),
            child: SvgPicture.asset(
              'assets/images/onboardingscreen1.svg',
              width: screenWidth * 0.4, // 40% of screen width
              height: screenWidth * 0.4,
              fit: BoxFit.contain,
              placeholderBuilder: (context) => CircularProgressIndicator(),
              semanticsLabel: 'Onboarding Icon',
            ),
            // child: Center(child: Text("data")),
          ),

          Container(
            height: screenHeight * 0.3,
            width: screenWidth * 1,
            color: const Color.fromARGB(255, 216, 192, 35),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                            style: TextStyle(
                              fontFamily: "Comgeometr",
                              fontSize: 30,
                            ),
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                    // Expanded(
                    //   child: Padding(
                    //     padding: const EdgeInsets.only(
                    //       top: 20.0,
                    //       left: 50.0,
                    //       right: 50.0,
                    //       bottom: 20.0,
                    //     ),
                    //     child: Text.rich(
                    //       TextSpan(
                    //         children: [
                    //           TextSpan(
                    //             text: 'Life is short and the world is ',
                    //             style: TextStyle(
                    //               fontSize: 30,
                    //               color: Colors.black,
                    //               fontFamily: "Comgeometr",
                    //             ),
                    //           ),
                    //           WidgetSpan(child: CurvedUnderlineText()),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  // ],
                ),
              ],
            ),
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

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:travenor/conponents/curvedUnderLine.dart';

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
            height: screenHeight * 0.55,
            width: screenWidth * 1,
            // color: const Color(0xFF24BAEC),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30), // Adjust radius as needed
              child: Image.asset(
                'assets/images/onboard.jpg',
                width: screenWidth * 1.0, // adjust as needed
                height: screenWidth * 0.5,
                fit:
                    BoxFit
                        .cover, // or BoxFit.cover / BoxFit.fill depending on desired look
              ),
            ),
          ),

          Container(
            height: screenHeight * 0.25,
            width: screenWidth * 1,
            // color: const Color.fromARGB(255, 216, 192, 35),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 30.0,
                      left: 50.0,
                      right: 50.0,
                      bottom: 15.0,
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

          //         SizedBox(
          //          width: 335,  // 👈 set your desired width
          // height: 56,  // 👈 set your desired height
          //           // color: const Color(0xFF24BAEC),
          //          child:   ElevatedButton(
          //             onPressed: () {},
          //             style: ButtonStyle(
          //               shape: WidgetStateProperty.all(
          //                 RoundedRectangleBorder(
          //                   borderRadius: BorderRadius.circular(
          //                     16,
          //                   ), // Change this value for more/less roundness
          //                 ),
          //               ),
          //               backgroundColor: WidgetStateProperty.all(Color(0xFF24BAEC)),
          //             ),
          //             child: Text("Next", style: TextStyle(color: Color(0xFFFFFFFF))),
          //           ),
          //         ),
          Container(
            height: screenHeight * 0.2,
            width: screenWidth * 1,
            // color: const Color(0xFF24BAEC),
            child: Center(
              child: SizedBox(
                width: 335, // 👈 set your desired width
                height: 56, // 👈 set your desired height
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    backgroundColor: WidgetStateProperty.all(Color(0xFF24BAEC)),
                  ),
                  child: Text("Next", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

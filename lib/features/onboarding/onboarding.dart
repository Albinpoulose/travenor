import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'onboarding 2.dart'; // Update this import to your actual file location

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFE6F7FA),
      body: Stack(
        children: [
          Column(
            children: [
              // Top image with "Skip"
              SizedBox(
                height: screenHeight * 0.55,
                width: screenWidth,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      child: Image.asset(
                        'assets/images/onboard.jpg',
                        width: screenWidth,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 50,
                      right: 20,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OnboardingScreen2(),
                            ),
                          );
                        },
                        child: const Text(
                          "Skip",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Content area
              Expanded(
                child: Container(
                  width: screenWidth,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 24),

                      // Title with "wide" highlighted and underlined
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: const TextStyle(
                              fontFamily: "Comgeometr",
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            children: [
                              const TextSpan(
                                text: "Life is short and the\nworld is ",
                              ),
                              WidgetSpan(
                                alignment: PlaceholderAlignment.baseline,
                                baseline: TextBaseline.alphabetic,
                                child: IntrinsicWidth(
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      const Text(
                                        "wide",
                                        style: TextStyle(
                                          fontFamily: "Comgeometr",
                                          fontSize: 34, // match rest of title
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange,
                                          decoration: TextDecoration.underline,
                                          decorationColor: Colors.orange,
                                        ),
                                      ),
                                      Positioned(
                                        bottom: -5,
                                        child: SvgPicture.asset(
                                          'assets/images/underline.png',
                                          height: 12,
                                          width: 60,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      // Subtitle
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: const Text(
                          "At Friends tours and travel, we customize reliable and trustworthy educational tours to destinations all over the world",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "GillsSansMT",
                            fontSize: 24,
                            color: Color(0xFF7D848D),
                            height: 1.5,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Pagination Dots
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 25,
                            height: 6,
                            decoration: BoxDecoration(
                              color: const Color(0xFF24BAEC),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            width: 6,
                            height: 6,
                            decoration: const BoxDecoration(
                              color: Color(0xFFD3D6DA),
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Container(
                            width: 6,
                            height: 6,
                            decoration: const BoxDecoration(
                              color: Color(0xFFD3D6DA),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),

                      const Spacer(),

                      // Get Started Button
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: SizedBox(
                          width: 335,
                          height: 56,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => const OnboardingScreen2(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF24BAEC),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: const Text(
                              "Get Started",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

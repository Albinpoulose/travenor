import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding Demo',
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  List<Widget> _onboardingPages = [
    OnboardingPage(
      title: "Welcome",
      description: "This is the first onboarding screen.",
      color: Colors.blueAccent,
    ),
    OnboardingPage(
      title: "Explore",
      description: "This is the second onboarding screen.",
      color: Colors.green,
    ),
    OnboardingPage(
      title: "Get Started",
      description: "This is the third onboarding screen.",
      color: Colors.orange,
    ),
  ];

  void _nextPage() {
    if (_currentPage < 2) {
      _controller.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Navigate to home or login screen here
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        onPageChanged: (index) => setState(() => _currentPage = index),
        itemCount: _onboardingPages.length,
        itemBuilder: (_, index) {
          return Stack(
            children: [
              _onboardingPages[index],
              Positioned(
                bottom: 50,
                right: 20,
                child: ElevatedButton(
                  onPressed: _nextPage,
                  child: Text(_currentPage < 2 ? 'Next' : 'Finish'),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final Color color;

  OnboardingPage({required this.title, required this.description, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: TextStyle(fontSize: 30, color: Colors.white)),
          SizedBox(height: 20),
          Text(description, style: TextStyle(fontSize: 18, color: Colors.white)),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home Screen", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

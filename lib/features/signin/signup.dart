// sign_up_screen.dart

import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Back button
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            const SizedBox(height: 20),
            const Text("Sign up now", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text("Please fill the details and create account"),
            const SizedBox(height: 20),

            // Name
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Full Name",
                  filled: true,
                  fillColor: const Color(0xFFF2F2F2),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Email
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Email",
                  filled: true,
                  fillColor: const Color(0xFFF2F2F2),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Password
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: Icon(Icons.visibility_off),
                  filled: true,
                  fillColor: const Color(0xFFF2F2F2),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 8.0, left: 20),
               child: Align(
                 alignment: Alignment.centerLeft, 
              child: Text("Password must be 8 characters"),
               ),
            ),
            const SizedBox(height: 20),

            // Sign Up Button
            SizedBox(
              width: 335,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF24BAEC),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () {},
                child: const Text("Sign Up", style: TextStyle(color: Colors.white)),
              ),
            ),

            const SizedBox(height: 25),

            // Already have account
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account? "),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Text("Sign in", style: TextStyle(color: Colors.orange)),
                ),
              ],
            ),

            const SizedBox(height: 20),
            const Text("Or connect"),

            const SizedBox(height: 80),

            // Social Buttons
            Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSocialIcon('assets/icons/facebook.jpg'),
                    const SizedBox(width: 24),
                    _buildSocialIcon('assets/icons/insta.jpg'),
                    const SizedBox(width: 24),
                    _buildSocialIcon('assets/icons/twitter.jpg'),
                  ],
                ),
          ],
        ),
      ),
    );
  }
}
 InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      filled: true,
      fillColor: const Color(0xFFF5F7FA),
      hintText: hint,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
    );
  }

  Widget _buildSocialIcon(String assetPath) {
    return CircleAvatar(
      radius: 24,
      backgroundColor: Colors.transparent,
      child: Image.asset(
        assetPath,
        width: 32,
        height: 32,
      ),
    );
  }


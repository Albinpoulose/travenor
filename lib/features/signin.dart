import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.arrow_back_ios),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    // padding: EdgeInsets.all(),
                    backgroundColor: const Color.fromARGB(255, 246, 247, 248),
                    elevation: 0,
                  ),
                ),
              ],
            ),
            // SizedBox(
            //   // height: ,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Sign in now")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Please sign in to continue our app")],
            ),
            // Row(

            // mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                // controller: _userNameConstroller,
                decoration: InputDecoration(
                  // disabledBorder: InputBorder.none,
                  filled: true,
                  fillColor: const Color.fromARGB(255, 234, 235, 236),
                  border: OutlineInputBorder(borderSide: BorderSide.none),

                  hintText: "Username",
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                // controller: _userNameConstroller,
                decoration: InputDecoration(
                  // disabledBorder: InputBorder.none,
                  filled: true,
                  fillColor: const Color.fromARGB(255, 234, 235, 236),
                  border: OutlineInputBorder(borderSide: BorderSide.none),

                  hintText: "Password",
                ),
              ),
            ),

            Text("Forgot password?"),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(onPressed: () {}, child: Text("Sign In")),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Don't have an account?"), Text("Sign up")],
            ),
            SizedBox(height: 5),
            Text("Or connect"),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  label: Text(""),
                  icon: Icon(Icons.facebook),
                ),
                TextButton.icon(
                  onPressed: () {},
                  label: Text(""),
                  icon: Icon(Icons.camera_alt),
                ),
                TextButton.icon(
                  onPressed: () {},
                  label: Text(""),
                  icon: Icon(Icons.chat_bubble_outline),
                ),
              ],
            ),

            // ],
            // ),
          ],
        ),
      ),
    );
  }
}

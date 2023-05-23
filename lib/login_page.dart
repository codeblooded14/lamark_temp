import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lamark_temp/components/buttons.dart';
import 'package:lamark_temp/components/squareTIle.dart';
import 'package:lamark_temp/components/textfield.dart';
import 'package:lamark_temp/mainPage.dart';

class LoginPage extends StatelessWidget {
  final String title;
  LoginPage({super.key, required this.title});

  //text editing controllers

  final usernameControllers = TextEditingController();
  final passwordControllers = TextEditingController();

  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: usernameControllers.text, password: passwordControllers.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(children: [
          const SizedBox(height: 50),

          Container(
            height: 100,
            width: 100,
            child: Image.asset('assets/images/lamark_logo.jpg'),
          ),

          const SizedBox(height: 50),

          //Welcome back message
          const Text(
            "Welcome Back you've been missed!",
            style: TextStyle(
                color: Color.fromARGB(255, 234, 218, 82),
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),

          const SizedBox(
            height: 25.0,
          ),
          //Username Textfield
          textField(
              controller: usernameControllers,
              hintText: 'username',
              obscureText: false),

          const SizedBox(
            height: 25.0,
          ),
          //password Textfield
          textField(
              controller: passwordControllers,
              hintText: 'password',
              obscureText: true),

          const SizedBox(
            height: 25.0,
          ),
          //forgot password
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forgot password?",
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25.0),

          //sign in button
          myButton(
            onTap: signUserIn,
            colorVariable: "Yellow",
          ),

          const SizedBox(
            height: 50,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Or continue with',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 25.0,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              // google button
              SquareTile(imagePath: 'assets/images/google_logo.png'),

              SizedBox(width: 25),

              // apple button
              SquareTile(imagePath: 'assets/images/apple_logo.png')
            ],
          ),
        ]),
      ),
    );
  }
}

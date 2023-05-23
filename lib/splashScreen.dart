import 'package:flutter/material.dart';
import 'package:lamark_temp/login_page.dart';
import 'package:lamark_temp/main.dart';

class splashScren extends StatefulWidget {
  const splashScren({super.key});

  @override
  State<splashScren> createState() => _splashScrenState();
}

class _splashScrenState extends State<splashScren> {
  @override
  void initState(){
    super.initState();
    _navigatetoHome();
  }  

  _navigatetoHome()async{
    await Future.delayed(const Duration(milliseconds: 2000),() {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(title: 'Login Page')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 250, width: 250, child:Image.asset('assets/images/lamark_logo.jpg')),
          ],
        ),
      ),
    );
  }
}
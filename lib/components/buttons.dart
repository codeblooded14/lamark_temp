import 'package:flutter/material.dart';

class myButton extends StatelessWidget{

  final Function()? onTap;
  final String colorVariable;

  const myButton({
    super.key,
    required this.onTap,
    required this.colorVariable
  });

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(child: Text(
          "Sign in",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          ),
          ),
      ),
    );
  }
}
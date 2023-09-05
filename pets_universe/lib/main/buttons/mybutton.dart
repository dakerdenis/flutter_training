
import 'package:flutter/material.dart';
import 'package:pets_universe/main/login.dart';

class MyButton extends StatelessWidget {


  const MyButton({super.key});
  


  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
            showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (ctx) {
          return  const Login();
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 45.0),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(206, 145, 205, 1), // Colored background
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), // Rounded border on left
            topRight: Radius.circular(0.0),  // No border on right
            bottomLeft: Radius.circular(30.0), // Rounded border on left
            bottomRight: Radius.circular(0.0), // No border on right
          ),
        ),
        child: const Center(
          child: Text(
            'Get Started',
            style: TextStyle(
              color: Colors.white, // Text color
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
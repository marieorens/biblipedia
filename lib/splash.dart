import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:biblipedia/intermediate_page.dart'; 

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const IntermediatePage()),
      );
    });

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 230, 227),
      body: Center(
        child: Lottie.asset("assets/bible.json"),
      ),
    );
  }
}

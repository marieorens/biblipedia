import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:biblipedia/myHomePage.dart'; 

class IntermediatePage extends StatelessWidget {
  const IntermediatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
            children: [
              const Column(
                children: [
                  Text(
                    'Bienvenue sur Biblipedia',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, 
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Découvrez la Bible avec une expérience unique', 
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54, 
                    ),
                  ),
                ],
              ),
             const SizedBox(height: 32), 
              Lottie.asset(
                "assets/think.json", 
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 32), 
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()), 
                    (route) => false, 
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  backgroundColor: Colors.blue, 
                  elevation: 5, 
                ),
                child: Container(
                  width: double.infinity, 
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center, 
                    children: [
                      Text('Commencer', style: TextStyle(fontSize: 18, color: Colors.white)), 
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward, color: Colors.white), 
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

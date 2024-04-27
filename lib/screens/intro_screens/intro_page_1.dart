import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({super.key});

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: 
              Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
              'Welcome to FUAVS,\nYour Ultimate Drone Companion!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
              SizedBox(height: 20),
              Lottie.network(
                "https://lottie.host/f73d3417-c08f-44a0-8312-70801b08d59f/OALnNDwJ3B.json",
                width: 350,
                height: 300,
              ),
              SizedBox(height: 20),
              const Text(
                'Control your drone effortlessly with our\nintuitive in-app controller.\n'
                //'Take flight with precision and ease,\n'
                //'unlocking a new world of aerial exploration.'
                ,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16,
                color: Colors.black),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
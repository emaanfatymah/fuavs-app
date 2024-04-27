import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({super.key});

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
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
              'Immerse yourself in cutting-edge technology! ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
              SizedBox(height: 20),
              Lottie.network(
                "https://lottie.host/a6f2abcc-31d6-4cd8-93b7-d8a74ff3f79f/z72xbXy2g7.json",
                width: 350,
                height: 300,
              ),
              SizedBox(height: 20),
              const Text(
                //' FUAVS goes beyond traditional controls by harnessing the power of computer vision.\n'
                'Experience intelligent tracking as your drone autonomously detects and follows subjects with precision.',
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
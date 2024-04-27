import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({super.key});

  @override
  State<IntroPage3> createState() => _IntoPage3State();
}

class _IntoPage3State extends State<IntroPage3> {
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
              'Seamless integration, limitless possibilities! ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
              SizedBox(height: 20),
              Lottie.network(
                "https://lottie.host/e48a6cb3-0486-4c8f-8c59-23d0bdab1b4f/t6Z7fUjT4o.json",
                width: 350,
                height: 300,
              ),
              SizedBox(height: 20),
              const Text(
                //'Capture stunning footage, track subjects effortlessly, and explore the skies like never before.'
                ' Your gateway to the future of drone technology is just a swipe away! ',
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
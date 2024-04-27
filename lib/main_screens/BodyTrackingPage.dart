import 'package:flutter/material.dart';

class BodyTracking extends StatefulWidget {
  const BodyTracking({super.key});

  @override
  State<BodyTracking> createState() => _BodyTrackingState();
}

class _BodyTrackingState extends State<BodyTracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text("Body Tracking",),
        centerTitle: true,
      ),
      body: Padding(
         padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
        child: Column(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF16222A),
                    Color(0xFF3A6073),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              )
            ),
          ],
        ),
      )
    );
  }
}
import 'package:flutter/material.dart';

class GestureRecogScreen extends StatefulWidget {
  const GestureRecogScreen({super.key});

  @override
  State<GestureRecogScreen> createState() => _GestureRecogScreenState();
}

class _GestureRecogScreenState extends State<GestureRecogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text("Setting",),
        centerTitle: true,
      ),
     
    );
  }
}
import 'package:flutter/material.dart';


class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              // Color(0xFF16222A),
              // Color(0xFF3A6073),
              Colors.black,
              Colors.black,
                ],  begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
          ),
          SafeArea(
            child: child!,
            ),
        ],
      ),
    ); 
  }
}
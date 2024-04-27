import 'package:drone_app/screens/intro_screens/intro_page_1.dart';
import 'package:drone_app/screens/intro_screens/intro_page_2.dart';
import 'package:drone_app/screens/intro_screens/intro_page_3.dart';
import 'package:drone_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index){
            setState(() {
              onLastPage = (index == 2);
            });
          },
      children: const [
        IntroPage1(),
        IntroPage2(),
        IntroPage3(),
      ],
     ),
     Container(
      alignment: const Alignment(0, 0.85),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: (){
              _controller.jumpToPage(2);
            },
            child: Text("Skip",
            style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold, // Set the text color to white
          ),)
            ),

          SmoothPageIndicator(controller: _controller, count: 3),

          onLastPage ? 
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context){
                  return WelcomeScreen();
                },
              ),
            );
          },
            child: const Text("Done",
            style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,),)
            )
          : GestureDetector(
            onTap: (){
              _controller.nextPage(duration: Duration(milliseconds: 500),
              curve: Curves.easeIn);
            },
            child: const Text("Next",
            style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold, // Set the text color to white
          ),)),
        ],
      ))
      ],
     )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'signin_screen.dart';
import 'signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: Get.size.height * 0.1),
            ),
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 300, // Adjust the height as needed
              child: Image.asset(
                'assets/images/FUAVS.png', // Replace 'your_image.png' with the actual path to your image asset
                fit: BoxFit.contain, // Adjust the BoxFit as needed
              ),
            ),
            const SizedBox(
              height: 1, // Adjust the height as needed
            ),
            // const Text(
            //   'EMPOWERING FLIGHTS',
            //   style: TextStyle(
            //       fontSize: 25,
            //       fontWeight: FontWeight.bold,
            //       color: Colors.white),
            // ),
            const SizedBox(
              height: 05,
            ),
            ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignInScreen()));
            },
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size(200, 50)),
              textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 23)),
              foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 8, 37, 51)), // Set text color here
             // Adjust width and height as needed
            ),
            child: Text('SignIn'),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
            },
            style: ButtonStyle(
               minimumSize: MaterialStateProperty.all(Size(200, 50)),
              textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 23)),
              foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 8, 37, 51)), // Set text color here
              // Adjust width and height as needed
            ),
            child: Text('SignUp'),
          ),
            // GestureDetector(
            //   onTap: () {
            //     logger.d('click');
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => const SignInScreen()));
            //   },
            //   child: const SizedBox(
            //     height: 53,
            //     width: 320,
            //   ),
            // ),
            // const Spacer(),
            // const Flexible(
            //   flex: 1,
            //   child: Align(
            //     alignment: Alignment.bottomRight,
            //     child: Row(
            //       children: [
            //         Expanded(
            //           child: WelcomeButton(
            //             buttonText: 'Sign in',
            //             onTap: SignInScreen(),
            //             color: Colors.transparent,
            //             textColor: Colors.white,
            //           ),
            //         ),
            //         Expanded(
            //           child: WelcomeButton(
            //             buttonText: 'Sign up',
            //             onTap: SignUpScreen(),
            //             color: Colors.white,
            //             textColor: Color(0xFF3A6073),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

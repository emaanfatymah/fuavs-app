import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:drone_app/main_screens/FaceTrackingPage.dart';
import 'package:drone_app/main_screens/BodyTrackingPage.dart';
import 'package:drone_app/main_screens/HandGesturePage.dart';

class RealTimeCameraScreen extends StatelessWidget {
  const RealTimeCameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 40),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_outlined,
                      size: 32,
                    )),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Live',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.green,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('25Ft',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 17)),
                      Icon(Icons.arrow_upward_outlined),
                      Icon(
                        Icons.battery_6_bar_outlined,
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: Get.height * 0.2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: Get.height * 0.25,
                  width: Get.width * 0.18,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 212, 208, 208),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Column(children: [
          
                     SizedBox(
                      height: Get.height * 0.01,
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.arrow_upward_outlined, size: 25,),
                       ],
                     ),
          
                      SizedBox(
                      height: Get.height * 0.03,
                     ),
          
                     CircleAvatar(
                      maxRadius: 33,
                      backgroundColor: Colors.grey,
                     ),
          
                     SizedBox(
                      height: Get.height * 0.04,
                     ),
                     
                     Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.arrow_downward_rounded, size: 25),
                       ],
                     )
                  ]),
                ),
          
          
               Container(
                height: Get.height * 0.25, width: 180, 
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 212, 208, 208),
                  shape: BoxShape.circle
                ),
                child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(Icons.arrow_upward_sharp),
                 ],),
          
                 SizedBox(height: Get.height *0.02,),
          
                  Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Icon(Icons.arrow_back),
                  SizedBox(width: Get.width *0.02,),
                  CircleAvatar(
                    maxRadius: 40, backgroundColor: Colors.grey,
                  ),
                  SizedBox(width: Get.width *0.02,),
                  Icon(Icons.arrow_forward_outlined)
                 ],),
          
                 SizedBox(height: Get.height *0.02,),
          
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(Icons.arrow_downward_sharp)
                 ],)
                
                ]),
                  
               ),
          
          
              ], ),
          
          
            Padding(
              padding: const EdgeInsets.only(top: 250, bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                Container(
  height: Get.height * 0.07,
  width: Get.width * 0.7,
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 212, 208, 208),
    borderRadius: BorderRadius.circular(20),
  ),
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            // Navigate to the page for face tracking
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FaceTracking()),
            );
          },
          child: Image.asset('assets/images/facetrack.png'),
        ),
        GestureDetector(
          onTap: () {
            // Navigate to the page for body tracking
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BodyTracking()),
            );
          },
          child: Image.asset('assets/images/bodytrack.png'),
        ),
        GestureDetector(
          onTap: () {
            // Navigate to the page for hand gesture tracking
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HandGesture()),
            );
          },
          child: Image.asset('assets/images/handgesture.png'),
        ),
      ],
    ),
  ),
),

              ],),
            ),
          
            // SizedBox(height:  20,),
           
          ]),
        ),
      ),
    );
  }
}

import 'package:drone_app/main_screens/real_time_camera_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(left: 15, right: 15, top: 40),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  maxRadius: 30,
                  backgroundColor: Color(0xFF3A6073),
                  child: Icon(
                    Icons.person,
                    size: 40, // Adjust the size as needed
                    color: Colors.white, // Customize the icon color
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Row(
              children: [
                Text(
                  'FUAVS',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color(0xFF3A6073)),
                )
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Container(
              height: 250,
              width: Get.width,
              decoration: BoxDecoration(
                  //  color: Colors.red,
                  borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/tello.png',
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Row(
              children: [
                Text(
                  'DJI TELLO DRONE',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color(0xFF3A6073)),
                )
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Container(
              width: Get.width,
              height: Get.height * 0.06,
              decoration: BoxDecoration(
                  color: Color(0xFF3A6073),
                  borderRadius: BorderRadius.circular(15)),
              child: const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(children: [
                  Text(
                    'Available Charge',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.battery_6_bar_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          '98%',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Container(
              width: Get.width,
              height: Get.height * 0.06,
              decoration: BoxDecoration(
                  color: Color(0xFF3A6073),
                  borderRadius: BorderRadius.circular(15)),
              child: const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(children: [
                  Text(
                    'Storage',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                  Text(
                    ' 50gb',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Range',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                        Text(
                          '    20FT',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Container(
              width: Get.width,
              height: Get.height * 0.08,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 212, 208, 208),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: Get.width * 0.03,
                  ),
                  GestureDetector(
                    onHorizontalDragEnd: (DragEndDetails details) {
                      if (details.primaryVelocity! > 0) {
                        print('Swipe left to right');

                        /// For swipe left to right
                        Get.to(RealTimeCameraScreen());
                        /////////// For swipe right to left
                      } else if (details.primaryVelocity! < 0) {}
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF3A6073),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: Get.height * 0.06,
                      width: Get.width * 0.22,
                      child: Center(
                          child: Text(
                        'Start',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

//  Container(
//               height: Get.height,
//               width: Get.width,
//               decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [
//                     Color(0xFF16222A),
//                     Color(0xFF3A6073),
//                   ],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                 ),
//               ),
//             ),

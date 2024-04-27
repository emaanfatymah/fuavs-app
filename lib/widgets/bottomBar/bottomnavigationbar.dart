import 'package:drone_app/main_screens/home_screen.dart';
import 'package:drone_app/main_screens/settings.dart';
import 'package:drone_app/widgets/bottomBar/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';



class bottomnavigationbar extends StatefulWidget {
  @override
  _bottomnavigationbarState createState() => _bottomnavigationbarState();
}

class _bottomnavigationbarState extends State<bottomnavigationbar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _buildPage(_selectedIndex),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Get.width * 0.040, vertical: Get.height * 0.007),
        child: Card(
          color: Colors.transparent,
          elevation: 0,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.transparent,
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 90,
                  spreadRadius: 7,
                  offset: Offset(3, -25),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: SizedBox(
                child: BottomNavigationBar(
                  elevation: 0,
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: Color(0xFF3A6073),
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  items: const [
                    BottomNavigationBarItem(
                      label: "",
                      icon: BottomBarUnSelectedIcon(
                        iconPath: 'assets/images/home.png',
                      ),
                      activeIcon: BottomBarSelectedIcon(
                        iconPath: 'assets/images/home.png',
                      ),
                    ),
                    // BottomNavigationBarItem(
                    //   label: "",
                    //   icon: BottomBarUnSelectedIcon(
                    //     iconPath: 'assets/images/location.png',
                    //   ),
                    //   activeIcon: BottomBarSelectedIcon(
                    //     iconPath: 'assets/images/location.png',
                    //   ),
                    // ),
                    // BottomNavigationBarItem(
                    //   label: "",
                    //   icon: BottomBarUnSelectedIcon(
                    //     iconPath: 'assets/images/notification.png',
                    //   ),
                    //   activeIcon: BottomBarSelectedIcon(
                    //     iconPath: 'assets/images/notification.png',
                    //   ),
                    // ),
                    BottomNavigationBarItem(
                      label: "",
                      icon: BottomBarUnSelectedIcon(
                        iconPath: 'assets/images/settings.png',
                      ),
                      activeIcon: BottomBarSelectedIcon(
                        iconPath: 'assets/images/settings.png',
                      ),
                    ),
                  ],
                  currentIndex: _selectedIndex,
                  onTap: _onItemTapped,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return HomeScreen(); 
      // case 1:
      //   return GestureRecogScreen(); 
      // case 2:
      //   return NotificationScreen();
      case 1:
        return SettingsScreen(); 
      default:
        return Container();
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigate to the respective screens based on the selected index
    switch (index) {
      case 0:
        // Navigate to Home screen
        break;
      case 1:
        // Navigate to Shop screen
        break;
      case 2:
        // Navigate to QR Code screen
        break;

      case 3:
        // Navigate to QR Code screen
        break;
    }
  }
}

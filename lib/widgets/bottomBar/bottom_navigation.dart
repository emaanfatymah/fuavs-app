import 'package:drone_app/widgets/bottomBar/bottom_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class BottomNavigation extends GetView<BottomNavigationController> {
   BottomNavigation({Key? key}) : super(key: key);

    final BottomNavigationController controller = Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: 280,
        margin:
            EdgeInsets.symmetric(vertical: Get.height * 0.01, horizontal: Get.width * 0.045),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(45),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items:  const [
              BottomNavigationBarItem(
                label: "",
                icon: BottomBarUnSelectedIcon(
                  iconPath: 'assets/images/white-search-menu.png',
                ),
                activeIcon: BottomBarSelectedIcon(
                  iconPath: 'assets/images/search-image.png',
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: BottomBarUnSelectedIcon(
                  iconPath: 'assets/images/white-shop-menu.png',
                ),
                activeIcon: BottomBarSelectedIcon(
                  iconPath: 'assets/images/black-shop-menu.png',
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: BottomBarUnSelectedIcon(
                  iconPath: 'assets/images/white-qr-menu.png',
                ),
                activeIcon: BottomBarSelectedIcon(
                  iconPath: 'assets/images/black-qr-menu.png',
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: BottomBarUnSelectedIcon(
                  iconPath: 'assets/images/white-profile-menu.png',
                ),
                activeIcon: BottomBarSelectedIcon(
                  iconPath: 'assets/images/black-profile-menu.png',
                ),
              ),
            ],
            currentIndex: controller.currentPage.value,
            onTap: (index) {
              controller.changePage(index);
            },
          ),
        ),
      ),
    );
  }
}

class BottomBarSelectedIcon extends StatelessWidget {
  const BottomBarSelectedIcon({
    required this.iconPath,
    Key? key,
  }) : super(key: key);
  final String? iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35, 
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.white.withOpacity(0.1), // shadow color
        //           spreadRadius: 5, // spread radius
        //           blurRadius: 5, // blur radius
        //           offset: Offset(0, 1), 
        //   )
        // ]
      ),
      child: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.white,
        child: Image.asset(
          iconPath ?? '',
          height: Get.height * 0.025,
        ),
      ),
    );
  }
}

class BottomBarUnSelectedIcon extends StatelessWidget {
  const BottomBarUnSelectedIcon({
    required this.iconPath,
    Key? key,
  }) : super(key: key);

  final String? iconPath;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      iconPath ?? '',
      height: Get.height * 0.025,
    );
  }
}

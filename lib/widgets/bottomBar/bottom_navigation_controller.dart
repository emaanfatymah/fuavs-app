
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  late PageController pageController;
  final currentPage = 0.obs;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: 0);
    update();
  }

  changePage(int index) {
    currentPage.value = index;
    pageController.jumpToPage(index);
    update();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
    update();
  }
}
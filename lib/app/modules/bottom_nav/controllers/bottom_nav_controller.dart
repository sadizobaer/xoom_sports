import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:xoom_sports/app/modules/home/views/home_view.dart';

class BottomNavController extends GetxController {
  static const List<Widget> pages = [
    HomeView(),
    Center(
      child: Text('page2'),
    ),
    Center(
      child: Text('page3'),
    ),
    Center(
      child: Text('page4'),
    ),
    Center(
      child: Text('page5'),
    ),
  ];

  RxInt selectedIndex = 0.obs;
  Rx<Widget> selectedPage = pages[0].obs;

  changeSelectedIndex(int index) {
    selectedIndex.value = index;
    changeSelectedPage(index);
  }

  changeSelectedPage(int index) {
    selectedPage.value = pages[index];
  }
}

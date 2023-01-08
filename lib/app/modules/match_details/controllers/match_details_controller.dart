import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xoom_sports/app/modules/match_details/views/components/info_page.dart';
import 'package:xoom_sports/app/modules/match_details/views/components/stat_page.dart';

class MatchDetailsController extends GetxController {
  List<String> tabs = ['info', 'summery', 'stats', 'line-ups', 'table'];
  static const List<Widget> pages = [
    InfoPage(),
    Center(
      child: Text('page2'),
    ),
    StatPage(),
    Center(
      child: Text('page4'),
    ),
    Center(
      child: Text('page5'),
    ),
  ];
  RxInt selectedIndex = 0.obs;
  Rx<Widget> selectedPage = pages[0].obs;
  changeSelectedIndex(int index){
    selectedIndex.value = index;
    changeSelectedPage(index);
  }
  changeSelectedPage(int index) {
    selectedPage.value = pages[index];
  }
}

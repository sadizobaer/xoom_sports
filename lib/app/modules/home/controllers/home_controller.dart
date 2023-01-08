import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final GlobalKey<ScaffoldState> homeScaffoldKey = GlobalKey<ScaffoldState>();
  Rx<DateTime> today = DateTime.now().obs;
  onDaySelected(DateTime date){
    today.value = date;
  }
  Rx<List<List<bool>>> favorites = Rx<List<List<bool>>>([[false, false, false], [false, false, false]]);
  changeToSelected(int index1, int index2){
    favorites.value[index1][index2] = !favorites.value[index1][index2];
    update();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';



class NewsController extends GetxController {

  static NewsController instance = Get.find();
  RxList EmploymentName = ['Private Sector', 'Government Sector',].obs;
  RxInt selectedEmploymentIndex = 11.obs;
  RxBool loadingScreen = false.obs;


  TabController controller;
  RxInt selectedIndex = 0.obs;
}



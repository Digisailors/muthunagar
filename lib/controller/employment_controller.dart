import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmploymentController extends GetxController {
  static EmploymentController instance = Get.find();

  RxList EmploymentCategories = ['Government Sector', 'Private Sector',].obs;
  RxInt selectedEmploymentIndex = 11.obs;
  RxBool loadingScreen = false.obs;
}
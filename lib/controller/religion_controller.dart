import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReligionController extends GetxController {
  static ReligionController instance = Get.find();
  RxList religionName = ['Hindu', 'Muslim','Christian'].obs;
  RxInt selectedReligionIndex = 11.obs;
  RxBool loadingScreen = false.obs;
}
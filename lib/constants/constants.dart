import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:muthunagar/constants/controller.dart';
import 'package:muthunagar/screens/celebration/religion/christian_religion.dart';
import 'package:muthunagar/screens/celebration/religion/hindu_religion.dart';
import 'package:muthunagar/screens/celebration/religion/muslim_religion.dart';
import 'package:muthunagar/screens/news/employment/govrnment_sector.dart';
import 'package:muthunagar/screens/news/employment/private_sector.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SpinKitFadingCircle(
      color: Color(0xFF178DBC),
      size: 30,
    );
  }
}

FutureDelayReligionController(int time,dynamic onPressedBefore,) {

  return
      Future.delayed(Duration(milliseconds: time),(){
        onPressedBefore;
      }).then((value) {
        if(religionController.selectedReligionIndex == 0){
          Get.to(HinduReligion());
          religionController.selectedReligionIndex.value = 11;
        }
        else if(religionController.selectedReligionIndex == 1){
          Get.to(MuslimReligion());
          religionController.selectedReligionIndex.value = 11;
        }
        else if(religionController.selectedReligionIndex == 2){
          Get.to(ChristianReligion());
          religionController.selectedReligionIndex.value = 11;
        }
      });
}


FutureDelayEmploymentController(int time,dynamic onPressedBefore,) {

  return
    Future.delayed(Duration(milliseconds: time),(){
      onPressedBefore;
    }).then((value) {
      if(employmentController.selectedEmploymentIndex == 0){
        Get.to(GovernmentSector());
        employmentController.selectedEmploymentIndex.value = 11;
      }
      else if(employmentController.selectedEmploymentIndex == 1){
        Get.to(PrivateSector());
        employmentController.selectedEmploymentIndex.value = 11;
      }
    });
}


Future<dynamic> defaultLoadingPopup() {
  return
    Get.defaultDialog(title: 'Loading Please Wait',content: Loading(),backgroundColor: Colors.white70);
}
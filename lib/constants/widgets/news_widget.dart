

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muthunagar/constants/controller.dart';

import '../constants.dart';
import '../text_widget.dart';

ListView NewsTabBar() {
  return ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context,int index){
        return
          Column(
            children: [
              ListTile(
                leading: Image.asset('assets/images/beauty.png'),
                title: customText(Colors.black, 'News', height * 0.05, FontWeight.bold),
                subtitle:  customText(Colors.grey, '26-07-2021/12:00PM', height * 0.03, FontWeight.normal),
              ),
            ],
          );

      });
}


ListView ChooseEmployment() {
  return ListView.builder(
      itemCount: employmentController.EmploymentCategories.length,
      itemBuilder: (BuildContext context,int index){
        return
          Column(
            children:
            [
              InkWell(
                onTap: (){
                  employmentController.selectedEmploymentIndex.value = index;
                  employmentController.loadingScreen.value = true;
                  employmentController.loadingScreen == true ? defaultLoadingPopup() : null;
                  FutureDelayEmploymentController(1000, employmentController.loadingScreen.value = false,);

                },
                child: Obx(
                      ()=> Card(
                    elevation: 10,
                    color:employmentController.EmploymentCategories.indexOf(employmentController.EmploymentCategories[index]) == employmentController.selectedEmploymentIndex.value ? Color(0xFF178DBC):Colors.white,
                    child: Padding(padding: EdgeInsets.all(16),
                      child:  customText(employmentController.EmploymentCategories.indexOf(employmentController.EmploymentCategories[index]) == employmentController.selectedEmploymentIndex.value ? Colors.white: Colors.black, employmentController.EmploymentCategories[index].toString(), height * 0.05, FontWeight.bold),),
                  ),
                ),
              ),
            ],
          );

      });
}
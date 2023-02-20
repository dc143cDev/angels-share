import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  isMenuBtnClicked() {}

  RxBool isItemHaven = false.obs;

  var homePageText = 'please add item'.obs;

  @override
  void onInit() {
    super.onInit();
    if (isItemHaven == true) {
      homePageText == 'item haven';
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

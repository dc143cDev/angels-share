import 'package:flutter/material.dart';
import 'package:get/get.dart';

//메인화면 fab 컨트롤러, 애니메이션이랑 눌렀을때의 반응.
class FabController extends GetxController
    with GetSingleTickerProviderStateMixin {
  //애니메이션 컨트롤러 init.
  late AnimationController animationController =
      AnimationController(vsync: this, duration: Duration(milliseconds: 500));

  //speed dial 버튼 클릭시 감지 노티파이어.
  //애니메이션과 무관. 다이알 올라오는 기능 감지용.
  ValueNotifier<bool> isDialOpen = ValueNotifier(false);

  var isPlaying = false.obs;

  //다이알 버튼 클릭시 선언된 애니메이션 컨트롤러 작동. 동시에 다이알 올라옴.
  isDialBtnClicked() {
    isDialOpen.value = true;
    animationController.forward();
  }

  //다이알 버튼 종료시 애니메이션 닫힘. 동시에 다이알 내려옴.
  isDialBtnClosed() {
    isDialOpen.value = false;
    animationController.reverse();
  }

  @override
  void onInit() {
    super.onInit();
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

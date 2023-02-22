import 'package:angels_share/app/controllers/fab_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';

import '../../../../custom_icons.dart';

class HomeFAB extends StatelessWidget {
  const HomeFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FabController fabController = FabController();
    Get.put(FabController());
    return SpeedDial(
      //dial 오픈 시 작동
      openCloseDial: fabController.isDialOpen,
      onOpen: () {},
      //dial 클로즈 시 작동
      onClose: () {
        fabController.isDialBtnClosed();
      },
      onPress: () {
        fabController.isDialBtnClicked();
      },
      child: Container(
        width: 60,
        height: 60,
        child: Center(
          child: AnimatedIcon(
            icon: AnimatedIcons.add_event,
            // 애니메이션 프로그레스.
            progress: fabController.animationController,
          ),
        ),
      ),
      //dial item 들.
      //클릭시 해당 함수에 해당하는 디알로그 출력.
      children: [
        SpeedDialChild(
            child: Icon(
              Custom.wine_glass_alt,
            ),
            label: 'Whiskey',
            onTap: () {
              Get.toNamed('/add-tasting-note');
            }),
        SpeedDialChild(
            child: Icon(
              Custom.beer,
            ),
            label: 'Craft Beer',
            onTap: () {
              Get.toNamed('/add-tasting-note');
            }),
      ],
    );
  }
}

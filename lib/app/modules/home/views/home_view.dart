import 'package:angels_share/app/modules/home/views/home_fab.dart';
import 'package:angels_share/palette.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../setting/views/setting_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());

    //파이어
    return Scaffold(
      floatingActionButton: HomeFAB(),
      appBar: AppBar(
        title: Text(
          'Notender',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
        centerTitle: false,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/setting');
            },
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Center(
        child: Obx(
          () => Text(
            '${controller.homePageText}',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../setting/views/setting_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Get.isDarkMode
            ? Text(
                'dark',
                style: TextStyle(color: Colors.blue),
              )
            : Text(
                'light',
                style: TextStyle(color: Colors.black),
              ),
        centerTitle: true,
        backgroundColor: Get.isDarkMode ? Colors.black12 : Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(SettingView());
            },
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            Get.changeTheme(
              Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
            );
          },
          child: const Text('Change Theme'),
        ),
      ),
    );
  }
}

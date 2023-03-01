import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../models/note.dart';

class NoteEditController extends GetxController {
  late final Note? note;
  final formKey = GlobalKey<FormState>();
  late bool isBeer;
  late int number;
  late String title;
  late String description;

  @override
  void onInit() {
    super.onInit();

    isBeer = note?.isBeer ?? false;
    title = note?.title ?? '';
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

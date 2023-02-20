import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_tasting_note_controller.dart';

class AddTastingNoteView extends GetView<AddTastingNoteController> {
  const AddTastingNoteView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddTastingNoteView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AddTastingNoteView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

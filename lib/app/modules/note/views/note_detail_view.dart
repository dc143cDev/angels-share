import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/note_controller.dart';

class NoteDetailView extends GetView<NoteController> {
  const NoteDetailView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(NoteController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('NoteDetail'),
        centerTitle: true,
      ),
      body: controller.isLoading.value
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: EdgeInsets.all(12),
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 8),
                children: [
                  Text(
                    '${Get.arguments['title']}',
                    // controller.note.title,
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}

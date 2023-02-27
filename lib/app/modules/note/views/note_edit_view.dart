import 'package:angels_share/app/modules/note/controllers/note_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../models/note.dart';

class NoteEditView extends GetView<NoteController> {
  final int noteId;

  const NoteEditView({
    Key? key,
    required this.noteId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(NoteController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('NoteEditView'),
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
                    controller.note.title,
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

import 'package:angels_share/app/modules/note/controllers/note_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../models/note.dart';
import '../controllers/note_edit_controller.dart';
import 'note_form.dart';

class NoteEditView extends GetView<NoteEditController> {
  final Note? note;

  const NoteEditView({
    Key? key,
    this.note,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(NoteEditController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('NoteEditView'),
        centerTitle: true,
      ),
      body: Form(
        key: controller.formKey,
        child: NoteFormWidget(),
      ),
    );
  }
}

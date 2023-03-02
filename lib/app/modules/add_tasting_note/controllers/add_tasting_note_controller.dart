import 'package:angels_share/app/data/note_db.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../models/note.dart';

class AddTastingNoteController extends GetxController {
  TextEditingController TitleController = TextEditingController();
  TextEditingController ContentController = TextEditingController();
  TextEditingController NoteColorController = TextEditingController();

  Future addNote() async {
    final note = Note(
      isBeer: false,
      title: TitleController.text,
      content: ContentController.text,
      noteColor: NoteColorController.text,
    );
    await NoteDB.instance.create(note);
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

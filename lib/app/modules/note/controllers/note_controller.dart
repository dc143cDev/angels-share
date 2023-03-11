import 'package:angels_share/app/data/note_db.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../models/note.dart';

class NoteController extends GetxController {
  late List<Note> notes = [];

  late Note note;

  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();

    NoteDB.instance.readAllNotes();
    refreshNotes();
    print('isInit');
  }

  @override
  void onReady() {
    super.onReady();
    print('isReady');
  }

  @override
  void onClose() {
    NoteDB.instance.close();

    super.onClose();
  }

  Future refreshNotes() async {
    isLoading == true;

    this.notes = await NoteDB.instance.readAllNotes();

    isLoading == false;
  }
}

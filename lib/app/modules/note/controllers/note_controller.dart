import 'package:angels_share/app/data/note_db.dart';
import 'package:get/get.dart';

import '../../../models/note.dart';

class NoteController extends GetxController {
  var homePageText = 'please add item'.obs;

  late List<Note> notes;

  late Note note;

  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();

    refreshNotes();
  }

  @override
  void onReady() {
    super.onReady();
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

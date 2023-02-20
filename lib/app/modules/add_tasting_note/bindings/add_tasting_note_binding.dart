import 'package:get/get.dart';

import '../controllers/add_tasting_note_controller.dart';

class AddTastingNoteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddTastingNoteController>(
      () => AddTastingNoteController(),
    );
  }
}

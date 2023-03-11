import 'package:get/get.dart';

import '../modules/add_tasting_note/bindings/add_tasting_note_binding.dart';
import '../modules/add_tasting_note/views/add_tasting_note_view.dart';
import '../modules/init/bindings/init_binding.dart';
import '../modules/init/views/init_view.dart';
import '../modules/note/bindings/note_binding.dart';
import '../modules/note/views/note_detail_view.dart';
import '../modules/note/views/note_view.dart';
import '../modules/setting/bindings/setting_binding.dart';
import '../modules/setting/views/setting_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.NOTE;

  static final routes = [
    GetPage(
      name: _Paths.SETTING,
      page: () => const SettingView(),
      binding: SettingBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: _Paths.INIT,
      page: () => const InitView(),
      binding: InitBinding(),
    ),
    GetPage(
      name: _Paths.ADD_TASTING_NOTE,
      page: () => const AddTastingNoteView(),
      binding: AddTastingNoteBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: _Paths.NOTE,
      page: () => const NoteView(),
      binding: NoteBinding(),
    ),
    GetPage(
      name: _Paths.NOTE_DETAIL,
      page: () => const NoteDetailView(),
      binding: NoteBinding(),
    ),
  ];
}

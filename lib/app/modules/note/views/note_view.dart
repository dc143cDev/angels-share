import 'package:angels_share/app/modules/note/views/note_detail_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../home/views/home_fab.dart';
import '../controllers/note_controller.dart';

class NoteView extends GetView<NoteController> {
  const NoteView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: HomeFAB(),
      appBar: AppBar(
        title: Text(
          'Notender',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
        centerTitle: false,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/setting');
            },
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Center(
        child: Obx(
          () => Text(
            '${controller.homePageText}',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }

  Widget buildNotes() => GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          final note = controller.notes[index];

          return GestureDetector(
            onTap: () async {
              await Get.toNamed(
                '',
                arguments: {
                  GetBuilder(
                    builder: (context) => NoteDetailView(noteId: note.id!),
                  ),
                },
              );
            },
          );
        },
      );
}

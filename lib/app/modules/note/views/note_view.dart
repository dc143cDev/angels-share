import 'package:angels_share/app/models/note_card_widget_view.dart';
import 'package:angels_share/app/modules/note/views/note_detail_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'note_fab.dart';
import '../controllers/note_controller.dart';

class NoteView extends GetView<NoteController> {
  const NoteView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: NoteFAB(),
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
        child: controller.isLoading.value
            ? CircularProgressIndicator()
            : controller.notes.isEmpty
                ? Text('Please add item')
                : buildNotes(),
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
              controller.refreshNotes();
            },
            child: NoteCardWidget(
              note: note,
              index: index,
            ),
          );
        },
      );
}

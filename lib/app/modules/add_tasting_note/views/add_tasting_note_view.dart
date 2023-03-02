import 'package:angels_share/palette.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_tasting_note_controller.dart';

class AddTastingNoteView extends GetView<AddTastingNoteController> {
  const AddTastingNoteView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 2,
                  child: TextButton(
                    onPressed: () {
                      controller.addNote();
                    },
                    child: Text(
                      'Done',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: controller.TitleController,
                decoration: InputDecoration(
                  hintText: 'Title',
                  hintStyle: MainTextStyle.textStyle,
                ),
                autofocus: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:angels_share/app/modules/add_tasting_note/controllers/add_tasting_note_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class WhiskeyView extends GetView<AddTastingNoteController> {
  const WhiskeyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('d1'),
          Text('d2'),
          Text('d3'),
          Text('d4'),
        ],
      ),
    );
  }
}

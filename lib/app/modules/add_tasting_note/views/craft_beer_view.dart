import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_tasting_note_controller.dart';

class CraftBeerView extends GetView<AddTastingNoteController> {
  const CraftBeerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('크1'),
          Text('브2'),
          Text('크3'),
          Text('브4'),
        ],
      ),
    );
  }
}

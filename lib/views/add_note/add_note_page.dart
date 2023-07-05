import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:not_defteri/views/add_note/add_note_controller.dart';

class AddNote extends GetWidget<AddNoteController> {
  const AddNote({super.key});
  static const String routeName = '/views/add_note/add_note_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: const Center(
        child: Text('note page'),
      ),
    );
  }
}

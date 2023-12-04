import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:faiz_notes_app/models/note.dart';
import 'package:get_storage/get_storage.dart';
class AddNoteController extends GetxController {

  TextEditingController titleController = TextEditingController();
  TextEditingController messageController = TextEditingController();


  void saveNote() {
    var title = titleController.text;
    var message = messageController.text;
    var note = Note(id: UniqueKey().toString(), title: title, message: message);
    var oldNotes = AddNoteController.getSavedNotes();
    oldNotes.add(note);
    GetStorage().write("notes", oldNotes.map((e) => e.toMap()).toList());

    print(AddNoteController.getSavedNotes());
  }
  
  void saveNoteOnline() async {

  }

  static List<Note> getSavedNotes() {
    var savedMapsList = (GetStorage().read<List<dynamic>>("notes") ?? []).map((e) => e as Map<String, dynamic>).toList();
    return savedMapsList.map((e) => Note.fromMap(e)).toList();
  }
}
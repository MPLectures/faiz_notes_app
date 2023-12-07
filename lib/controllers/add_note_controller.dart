import 'package:faiz_notes_app/Helpers/firebase_helpers.dart';
import 'package:faiz_notes_app/models/note.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AddNoteController extends GetxController {
  TextEditingController titleController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  Note? note;

  @override
  void onInit() {
    if (note != null) {
      titleController.text = note?.title ?? "";
      messageController.text = note?.message ?? "";
    }

    super.onInit();
  }

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
    var title = titleController.text;
    var message = messageController.text;
    var id = note?.id ?? UniqueKey().toString();

    var newNote = Note(id: id, title: title, message: message);

    DbConstants.usersRef.doc(AuthConstants.currentUserId!).collection('notes').doc(id).set(newNote.toMap());


    // if (note == null) {
    //   DbConstants.usersRef.doc(AuthConstants.currentUserId!).collection('notes').doc(id).set(newNote.toMap());
    // } else {
    //   DbConstants.usersRef.doc(AuthConstants.currentUserId!).collection('notes').doc(id).update({"title": "updated"});
    // }
  }

  static List<Note> getSavedNotes() {
    var savedMapsList = (GetStorage().read<List<dynamic>>("notes") ?? []).map((e) => e as Map<String, dynamic>).toList();
    return savedMapsList.map((e) => Note.fromMap(e)).toList();
  }

  AddNoteController({
    this.note,
  });

  Future<void> deleteNote() async {
    if (note != null){
      await DbConstants.usersRef.doc(AuthConstants.currentUserId!).collection('notes').doc(note!.id).delete();
    }
  }
}
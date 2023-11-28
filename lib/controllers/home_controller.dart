import 'package:faiz_notes_app/Helpers/base_imports.dart';
import 'package:faiz_notes_app/controllers/add_note_controller.dart';
import 'package:get_storage/get_storage.dart';
class HomeController extends GetxController {
  RxList<Note> savedNotes = RxList([]);

  @override
  void onInit() {
    savedNotes.value = AddNoteController.getSavedNotes();

    GetStorage().listenKey('notes', (value) {
      savedNotes.value = AddNoteController.getSavedNotes();
    });
  }

  void clearAllNotes() {
    GetStorage().remove('notes');
  }


  // HomeScreen
  var selectedIndex = 0.obs;
  void changeIndex(int index){
    selectedIndex.value = index;
  }

  // Add Notes Home Screen
  var selectedIndexValue = 0;
  void changeIndexValue(int index){
    selectedIndex.value = index;
  }

// @override
  // void onInit() {
  //
  // }


}
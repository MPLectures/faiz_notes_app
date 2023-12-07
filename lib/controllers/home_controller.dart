import 'package:faiz_notes_app/Helpers/base_imports.dart';
import 'package:faiz_notes_app/Helpers/firebase_helpers.dart';
import 'package:faiz_notes_app/controllers/add_note_controller.dart';
import 'package:get_storage/get_storage.dart';
import 'package:faiz_notes_app/View/Screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeController extends GetxController {
  RxList<Note> savedNotes = RxList([]);

  @override
  void onInit() {
    checkIfUserHasVerifiedEmail();
    DbConstants.usersRef.doc(AuthConstants.currentUserId!).collection('notes').snapshots().listen((event) {
      var docs = event.docs;
      savedNotes.value = docs.map((e) => Note.fromMap(e.data())).toList();
    });
    super.onInit();
  }

  void checkIfUserHasVerifiedEmail() async {

    await Future.delayed(Duration(seconds: 2));

    if (FirebaseAuth.instance.currentUser?.emailVerified ?? false) {
      // savedNotes.value = AddNoteController.getSavedNotes();
      // GetStorage().listenKey('notes', (value) {
      //   savedNotes.value = AddNoteController.getSavedNotes();
      // });
    } else {
      showDialog(
        context: Get.context!,
        builder: (_) => AlertDialog(
          title: Text("Alert"),
          content: Text("Email not verified yet"),
          actions: [
            ElevatedButton(
                onPressed: () {
                  FirebaseAuth.instance.currentUser?.sendEmailVerification();
                  FirebaseAuth.instance.signOut();
                  Get.offAll(LoginScreen());
                },
                child: Text("Send email"))
          ],
        ),
        barrierDismissible: false
      );
    }
  }

  // void clearAllNotes() {
  //   GetStorage().remove('notes');
  // }

  // HomeScreen
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  // Add Notes Home Screen
  var selectedIndexValue = 0;

  void changeIndexValue(int index) {
    selectedIndex.value = index;
  }


  void fetchNotesOnline() async {

  }

// @override
// void onInit() {
//
// }
}

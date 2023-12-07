import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:faiz_notes_app/Helpers/firebase_helpers.dart';
import 'package:faiz_notes_app/models/user.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:faiz_notes_app/View/Screens/home_screen.dart';

class AuthController extends GetxController {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  var loading = false.obs;

  void registerUser() async {
    print('ok');

    if (passwordController.text != confirmPasswordController.text) {
      Get.snackbar("Error", "Passwords don't match", backgroundColor: Colors.red, colorText: Colors.white);
      return;
    }


    loading.value = true;

    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text).then((value) async {
      await FirebaseAuth.instance.currentUser?.updateDisplayName(nameController.text);
      var model = UserModel(id: value.user!.uid, name: nameController.text, email: emailController.text, password: passwordController.text);
      await saveUserData(model);
      loading.value = false;

      Get.offAll(HomeScreen());
    }).catchError((error) {
      loading.value = false;

      print(error);
    });
  }

  Future<String> loginUser() async {
    loading.value = true;

    String response = '';

    await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text).then((value) async {
      loading.value = false;

      await FirebaseAuth.instance.currentUser?.reload();

      var verified = FirebaseAuth.instance.currentUser?.emailVerified ?? false;
      response = verified ? 'success' : 'Email not verified yet';
      // if (!verified) {
      //   await FirebaseAuth.instance.signOut();
      // }
    }).catchError((error) {
      loading.value = false;
      response = error.toString();
      print(error);
    });

    return response;
  }

  void sendForgotPassEmail() async {
    var email = emailController.text;
    FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }

  Future<void> saveUserData(UserModel userModel) async {
    await DbConstants.usersRef.doc(userModel.id).set(userModel.toMap());
  }
}

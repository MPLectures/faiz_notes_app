import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:faiz_notes_app/View/Screens/home_screen.dart';

class AuthController extends GetxController {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  void registerUser() async {
    if (passwordController.text != confirmPasswordController.text) {
      Get.snackbar("Error", "Passwords don't match", backgroundColor: Colors.red, colorText: Colors.white);
      return;
    }

    FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text).then((value) {
      Get.to(HomeScreen());
    }).catchError((error){
      print(error);
    });
  }
  void loginUser() async {

    FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text).then((value) {
      Get.to(HomeScreen());
    }).catchError((error){
      print(error);
    });
  }
}

import 'package:faiz_notes_app/View/Screens/add_notes_home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:faiz_notes_app/Helpers/Constant.dart';
import 'package:faiz_notes_app/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:faiz_notes_app/View/Screens/login_screen.dart';

class LayoutHome extends StatelessWidget {
  HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {

            },
            icon: Icon(
              Icons.delete,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut().then((value) {
                Get.offAll(LoginScreen());
              }).catchError((error){
                print(error);
              });
            },
            icon: Icon(
              Icons.logout,
              color: Colors.black,
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Obx(
          () => controller.savedNotes.isEmpty
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/Images/First Image.png',
                      height: 180.sp,
                      width: 180.sp,
                    ),
                    Text(
                      'Start Your Journey',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20.sp,
                          fontFamily: 'Poppins',
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 7.sp,
                    ),
                    Text(
                      'Every big step start with small step.Notes'
                      'your first idea and start your journey!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          fontFamily: 'Poppins',
                          color: NotesColor.natural_darkColor),
                    ),
                    SizedBox(
                      height: 7.sp,
                    ),
                    Image.asset(
                      'assets/Images/Second Image.png',
                      height: 110.sp,
                    ),
                  ],
                ).paddingAll(10.sp)
              : Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.sp),
                  child: ListView.builder(
                    itemCount: controller.savedNotes.length,
                    itemBuilder: (_, index) {
                      var item = controller.savedNotes[index];
                      return GestureDetector(
                        onTap: (){
                          Get.to(AddNotesScreen(note: item,));
                        },
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.sp),
                                color: NotesColor.purpleColor,
                              ),
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: NotesColor.dark_purple,
                                  radius: 18.sp,
                                  child: Image.asset(
                                      'assets/Images/light-bulb.png',
                                      color: Colors.white),
                                ),
                                title: Text(
                                  item.title,
                                  style: TextStyle(
                                    color: NotesColor.whiteColor,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                subtitle: Text(
                                  item.message,
                                  style: TextStyle(
                                    color: NotesColor.primaryColor,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ),
                            Divider(
                              color: NotesColor.whiteColor,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
        ),
      ),
    );
  }

  LayoutHome({
    required this.controller,
  });
}

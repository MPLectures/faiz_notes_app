import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:faiz_notes_app/Helpers/Constant.dart';
import 'package:faiz_notes_app/controllers/home_controller.dart';
import 'package:get/get.dart';

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
              controller.clearAllNotes();
            },
            icon: Icon(
              Icons.delete,
              color: Colors.black,
            ),
          )
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
                    ),
                    Text(
                      'Start Your Journey',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24, fontFamily: 'Poppins', color: Colors.black),
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Text(
                      'Every big step start with small step.Notes your first idea and start your journey!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, fontFamily: 'Poppins', color: NotesColor.natural_darkColor),
                    ),
                    SizedBox(
                      height: 9.sp,
                    ),
                    Image.asset(
                      'assets/Images/Second Image.png',
                      width: 150,
                      height: 110,
                    ),
                  ],
                ).paddingAll(45.sp)
              : Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.sp),
                  child: ListView.builder(
                    itemCount: controller.savedNotes.length,
                    itemBuilder: (_, index) {

                      var item = controller.savedNotes[index];

                      return Column(
                        children: [
                          Container(
                            height: 70.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.sp),
                              color: NotesColor.purpleColor,
                            ),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: NotesColor.dark_purple,
                                radius: 19,
                                child: Image.asset('assets/Images/light-bulb.png', color: Colors.white),
                              ),
                              title: Text(
                                item.title,
                                style: TextStyle(
                                  color: NotesColor.whiteColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              subtitle: Text(
                                item.message,
                                style: TextStyle(
                                  color: NotesColor.primaryColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            color: NotesColor.whiteColor,
                          )
                        ],
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

import 'package:faiz_notes_app/Helpers/Constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../Custom_Widgets/Custom_ContainerButton.dart';
import '../../Custom_Widgets/Custom_TextFormField.dart';
import 'notes_home_screen.dart';
import 'package:faiz_notes_app/controllers/add_note_controller.dart';

class AddNotesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AddNoteController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: NotesColor.whiteColor,
        elevation: 0,
        title: Text(
          'Add Notes',
          style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600, fontSize: 24.sp, color: NotesColor.blackColor),
          textAlign: TextAlign.center,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 3.h,
              ),
              Text(
                'Name',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, fontFamily: 'Poppins', color: NotesColor.natural_black),
              ),
              SizedBox(
                height: 5.sp,
              ),
              CustomTextFormField(
                hintText: 'Muhammad Ali Hassan Shaikh',
                controller: controller.titleController,
                hintStyle: TextStyle(color: NotesColor.blackColor, fontSize: 11, fontWeight: FontWeight.w300, fontFamily: 'Poppins'),
                borderRadius: BorderRadius.circular(8.sp),
                fillColor: NotesColor.light_grey,
                falseColor: true,
                border: InputBorder.none,
                SuffixIcon: Icon(Icons.cancel_outlined),
                BorderColor: BorderSide(),
                borderSide: BorderSide(),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                ' Write your data here',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, fontFamily: 'Poppins', color: NotesColor.natural_black),
                textAlign: TextAlign.center,
              ),
              CustomTextFormField(
                MaximumLine: 10,
                controller: controller.messageController,
                hintText: '*************************',
                hintStyle: TextStyle(color: NotesColor.blackColor, fontSize: 11, fontWeight: FontWeight.w300, fontFamily: 'Poppins'),
                borderRadius: BorderRadius.circular(8.sp),
                fillColor: NotesColor.light_grey,
                falseColor: true,
                border: InputBorder.none,
                BorderColor: BorderSide(),
                borderSide: BorderSide(),
              ),
              SizedBox(
                height: 2.h,
              ),
              GestureDetector(
                onTap: () {
                  controller.saveNote();
                  Get.back();
                },
                child: CustomContainerButton(
                  customHeight: 52,
                  customWidth: 280.sp,
                  borderRadius: BorderRadius.circular(8.sp),
                  buttonColor: NotesColor.purpleColor,
                  text: Text('Save',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.w500, color: NotesColor.whiteColor)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

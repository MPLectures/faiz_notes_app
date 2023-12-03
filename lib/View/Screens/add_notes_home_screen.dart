import 'package:faiz_notes_app/Helpers/Constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../Custom Widgets/Custom_TextFormField.dart';
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
          style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 19.sp,
              color: NotesColor.blackColor),
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
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                    color: NotesColor.natural_black),
              ),
              SizedBox(
                height: 5.sp,
              ),
              CustomTextFormField(
                hintText: 'Muhammad Ali Hassan Shaikh',
                controller: controller.titleController,
                hintStyle: TextStyle(
                    color: NotesColor.blackColor,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins'),
                borderRadius: BorderRadius.circular(8.sp),
                fillColor: NotesColor.light_grey,
                falseColor: true,
                border: InputBorder.none,
                SuffixIcon: Icon(Icons.cancel_outlined),
                BorderColor: BorderSide(color: NotesColor.purpleColor),
                borderSide: BorderSide(color: NotesColor.light_grey),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                ' Write your data here',
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                    color: NotesColor.natural_black),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 5.sp,
              ),
              CustomTextFormField(
                MaximumLine: 10,
                controller: controller.messageController,
                hintText:'*************************'
                    '*************************'
                    '*************************',
                hintStyle: TextStyle(
                    color: NotesColor.blackColor,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins'),
                borderRadius: BorderRadius.circular(8.sp),
                fillColor: NotesColor.light_grey,
                falseColor: true,
                border: InputBorder.none,
                BorderColor: BorderSide(color: NotesColor.purpleColor),
                borderSide: BorderSide(color: NotesColor.light_grey),
              ),
              SizedBox(
                height: 13.h,
              ),
              SizedBox(
                height: 54,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      controller.saveNote();
                      Get.back();
                    },
                    child: Text('Save',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: NotesColor.whiteColor)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: NotesColor.purpleColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:faiz_notes_app/View/Screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../Custom Widgets/Custom_TextFormField.dart';
import '../../Helpers/Constant.dart';

class NewPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: NotesColor.whiteColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: NotesColor.purpleColor,
            size: 18,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Back to Login',
          style: TextStyle(
              fontSize: 16,
              color: NotesColor.purpleColor,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins'),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create a New Password',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    color: NotesColor.blackColor),
              ),
              SizedBox( height: 5.sp,),
              Text(
                'Your new password should be different from the previous password',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    color: NotesColor.natural_darkColor),
              ),
              SizedBox( height: 10,),
              Text(
                'New Password',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    color: NotesColor.blackColor),
              ),
              SizedBox( height: 6.sp,),
              CustomTextFormField(
                hintText: '******',
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  color: NotesColor.greyColor,
                ),
                BorderColor: BorderSide(color: NotesColor.purpleColor),
                borderSide: BorderSide(color: NotesColor.greyColor),
                borderRadius: BorderRadius.circular(7),
              ),
              SizedBox( height: 5.sp,),
              Text(
                'min. 8 character, combination of 0-9, A-Z, a-z',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    color: NotesColor.natural_darkColor),
              ),
              SizedBox(height: 15.sp,),
              Text(
                'Retype New Password',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    color: NotesColor.blackColor),
              ),
              SizedBox( height: 6.sp,),
              CustomTextFormField(
                hintText: '******',
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  color: NotesColor.greyColor,
                ),
                BorderColor: BorderSide(color: NotesColor.purpleColor),
                borderSide: BorderSide(color: NotesColor.greyColor),
                borderRadius: BorderRadius.circular(7),
              ),
              SizedBox( height: 10.h,),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => LoginScreen());
                  },
                  child: Text('Create Password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: NotesColor.whiteColor)),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: NotesColor.purpleColor,
                      fixedSize: Size(double.infinity, 54),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}

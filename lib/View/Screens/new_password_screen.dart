import 'package:faiz_notes_app/View/Screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../Custom_Widgets/Custom_ContainerButton.dart';
import '../../Custom_Widgets/Custom_TextFormField.dart';
import '../../Helpers/Constant.dart';

class NewPasswordScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: NotesColor.whiteColor,
        elevation: 0,
        leading: TextButton(
          onPressed: () {
              Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: NotesColor.purpleColor,
            size: 14,
          ),
        ),
        title: Text(
          'Back to Login',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w300,
            fontFamily: 'Poppins',
            color: NotesColor.purpleColor,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.sp),
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
              SizedBox(height: 5.sp,),
              Text(
                'Your new password should be different from the previous password',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    color: NotesColor.natural_darkColor),
              ),
              SizedBox(height: 10,),
              Text(
                'New Password',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    color: NotesColor.blackColor),
              ),
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
              SizedBox(height: 5.sp,),
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
              SizedBox(height: 6,),
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
              SizedBox(height: 10.h,),
              GestureDetector(
                onTap: (){
                  Get.to(()=>RegisterScreen());
                },
                child: CustomContainerButton(
                  customHeight: 52,
                  customWidth: 280.sp,
                  borderRadius: BorderRadius.circular(10.sp),
                  buttonColor: NotesColor.purpleColor,
                 text: Text('Create Password',textAlign:TextAlign.center,
                     style: TextStyle( fontFamily: 'Poppins',
                   fontSize: 16,
                   fontWeight: FontWeight.w500,
                     color: NotesColor.whiteColor)
                   ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

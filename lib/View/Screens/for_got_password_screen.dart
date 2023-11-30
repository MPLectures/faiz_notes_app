import 'package:faiz_notes_app/Helpers/Constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../Custom Widgets/Custom_TextFormField.dart';
import 'login_screen.dart';
import 'package:faiz_notes_app/controllers/auth_controller.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var authController = Get.put(AuthController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: NotesColor.whiteColor,
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
              fontSize: 16,
              color: NotesColor.purpleColor,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins'),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
            child: Column(
              children: [
                Image.asset(
                  'assets/Images/Illustration.png',
                  width: 280,
                  height: 280,
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 28,
                          fontFamily: 'Poppins',
                          color: NotesColor.blackColor),
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Text(
                      'Insert your email address to receive a code for creating a new password',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          color: NotesColor.natural_darkColor),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'Email Address',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          color: NotesColor.blackColor),
                    ),
                    CustomTextFormField(
                      hintText: 'anto_michael@gmail.com',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        color: NotesColor.greyColor,
                      ),
                      controller: authController.emailController,
                      BorderColor: BorderSide(color: NotesColor.purpleColor),
                      borderSide: BorderSide(color: NotesColor.greyColor),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Container(
                      width: 340,
                      height: 52,
                      padding: EdgeInsets.symmetric(vertical: 10.sp),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.sp),
                        color: NotesColor.purpleColor,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          authController.sendForgotPassEmail();
                          Get.back();
                        },
                        child: Text(
                          'Send Code',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 15.sp,
                              color: NotesColor.whiteColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

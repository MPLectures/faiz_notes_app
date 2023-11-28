import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../Custom_Widgets/Custom_TextFormField.dart';
import '../../Helpers/Constant.dart';
import 'home_screen.dart';
import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Register',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                      color: NotesColor.blackColor),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'And start taking notes',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: NotesColor.natural_darkColor),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                Text(
                  'Full Name',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      color: NotesColor.blackColor),
                ),
                CustomTextFormField(
                  hintText: 'Faiz Muhammad',
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
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Email Address',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      color: NotesColor.blackColor),
                ),
                CustomTextFormField(
                  hintText: 'johndoe@gmail.com',
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
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Password',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      color: NotesColor.blackColor),
                ),
                CustomTextFormField(
                  hintText: '*******',
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
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Retype Password',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      color: NotesColor.blackColor),
                ),
                CustomTextFormField(
                  hintText: '*******',
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
                SizedBox(
                  height: 5.h,
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => HomeScreen());
                  },
                  child: Container(
                    height: 52,
                    padding: EdgeInsets.symmetric(vertical: 10.sp),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: NotesColor.purpleColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(),
                        Text(
                          'Register',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 16.sp,
                              color: NotesColor.whiteColor),
                          textAlign: TextAlign.center,
                        ),
                        Icon(
                          Icons.arrow_forward_outlined,
                          color: NotesColor.whiteColor,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: NotesColor.naturalLight,
                          indent: 15,
                          endIndent: 20,
                        ),
                      ),
                      Text('or'),
                      Expanded(
                        child: Divider(
                          color: NotesColor.naturalLight,
                          indent: 20,
                          endIndent: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => HomeScreen());
                  },
                  child: Container(
                    height: 52,
                    padding: EdgeInsets.symmetric(vertical: 10.sp),
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: NotesColor.greyColor, width: 1.sp),
                      borderRadius: BorderRadius.circular(100),
                      color: NotesColor.whiteColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/Images/Logo Image.png'),
                          height: 22,
                          width: 22,
                        ),
                        SizedBox(width: 3.w),
                        Text(
                          ' Register with Google',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              fontSize: 13.sp,
                              color: NotesColor.blackColor),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          color: NotesColor.purpleColor,
                          fontSize: 13.sp),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => LoginScreen());
                      },
                      child: Container(
                        child: Text(
                          ' Login here',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              color: NotesColor.purpleColor,
                              fontSize: 13.sp),
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

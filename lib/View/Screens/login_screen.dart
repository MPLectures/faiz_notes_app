import 'package:faiz_notes_app/View/Screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../Custom_Widgets/Custom_TextFormField.dart';
import '../../Helpers/Constant.dart';
import 'for_got_password_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Let’s Login',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 32,
                        color: NotesColor.blackColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'And notes your idea',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        color: NotesColor.blackColor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Email Address',
                    style: TextStyle(fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        color: NotesColor.blackColor),
                  ),
                  CustomTextFormField(
                    hintText: 'Example: johndoe@gmail.com',
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
                    height: 20,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(fontSize: 16,
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
                    height: 5,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(() => ForgotPasswordScreen());
                    },
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: NotesColor.purpleColor,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                            () => HomeScreen(),
                      );
                    },
                    child: Container(
                      height: 52,
                      padding: EdgeInsets.symmetric(vertical: 7.sp),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: NotesColor.purpleColor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(),
                          Text(
                            'Login',
                            style: TextStyle(fontWeight: FontWeight.w500,
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
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: NotesColor.naturalLight,
                            indent: 15,
                            endIndent: 20,
                          ),
                        ),
                        Text('or'),
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: NotesColor.naturalLight,
                            indent: 20,
                            endIndent: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                            () => HomeScreen(),
                      );
                    },
                    child: Container(
                      height: 52,
                      padding: EdgeInsets.symmetric(vertical: 10.sp),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: NotesColor.naturalLight,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/Images/Logo Image.png'),
                            height: 22,
                            width: 22,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            ' Login with Google',
                            style: TextStyle(fontWeight: FontWeight.bold,
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
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have any account?',
                        style: TextStyle(fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            color: NotesColor.purpleColor,
                            fontSize: 13.sp),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(() => RegisterScreen());
                        },
                        child: Text(
                          'Register here',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              color: NotesColor.purpleColor,
                              fontSize: 13.sp),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

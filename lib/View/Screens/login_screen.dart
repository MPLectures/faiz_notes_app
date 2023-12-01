import 'home_screen.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../Helpers/Constant.dart';
import 'for_got_password_screen.dart';
import 'package:flutter/material.dart';
import '../../Custom Widgets/Custom_TextFormField.dart';
import 'package:faiz_notes_app/View/Screens/register_screen.dart';
import 'package:faiz_notes_app/controllers/auth_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var authController = Get.put(AuthController());

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
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 20.sp,
                        color: NotesColor.blackColor),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Text(
                    'And notes your idea',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        color: NotesColor.natural_darkColor),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Text(
                    'Email Address',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        color: NotesColor.blackColor),
                  ),
                  SizedBox(
                    height: 2.sp,
                  ),
                  CustomTextFormField(
                    hintText: 'Example: johndoe@gmail.com',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      color: NotesColor.greyColor,
                    ),
                    controller: authController.emailController,
                    BorderColor: BorderSide(color: NotesColor.purpleColor),
                    borderSide: BorderSide(color: NotesColor.greyColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  SizedBox(
                    height: 2.5.h,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
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
                    controller: authController.passwordController,
                    BorderColor: BorderSide(color: NotesColor.purpleColor),
                    borderSide: BorderSide(color: NotesColor.greyColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(() => ForgotPasswordScreen());
                    },
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: NotesColor.purpleColor,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  GestureDetector(
                    onTap: authController.loading.isTrue
                        ? null
                        : () async {
                            var response = await authController.loginUser();

                            if (response == 'success') {
                              Get.offAll(HomeScreen());
                            } else {
                              var emailNotVerifiedError = response
                                  .toLowerCase()
                                  .contains("email not verified");

                              showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                        title: Text("Alert"),
                                        content: Text(response),
                                        actions: [
                                          if (emailNotVerifiedError)
                                            ElevatedButton(
                                                onPressed: () async {
                                                  FirebaseAuth
                                                      .instance.currentUser
                                                      ?.sendEmailVerification();
                                                  FirebaseAuth.instance
                                                      .signOut();
                                                  Get.back();
                                                },
                                                child: Text("Resend email"))
                                        ],
                                      ),
                                  barrierDismissible: false);
                            }
                          },
                    child: Obx(() {
                      return Container(
                        height: 52,
                        padding: EdgeInsets.symmetric(vertical: 8.sp),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: NotesColor.purpleColor),
                        child: authController.loading.isTrue
                            ? Center(
                                child: SizedBox(
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                    strokeWidth: 2,
                                  ),
                                  height: 20,
                                  width: 20,
                                ),
                              )
                            : SizedBox(
                                height: 55,
                                width: double.infinity,
                                child: ElevatedButton(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(),
                                      Text(
                                        'Login',
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
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: NotesColor.purpleColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      )),
                                ),
                              ),
                      );
                    }),
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
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: OutlinedButton(
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
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                color: NotesColor.blackColor),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Get.to(
                          () => HomeScreen(),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          color: NotesColor.greyColor,
                        ),
                        backgroundColor: NotesColor.naturalLight,
                        shape: StadiumBorder(),
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            color: NotesColor.purpleColor,
                            fontSize: 16),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(() => RegisterScreen());
                        },
                        child: Text(
                          'Register here',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              color: NotesColor.purpleColor,
                              fontSize: 16),
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

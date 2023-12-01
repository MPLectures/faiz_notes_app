import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../Custom Widgets/Custom_TextFormField.dart';
import '../../Helpers/Constant.dart';
import 'home_screen.dart';
import 'login_screen.dart';
import 'package:faiz_notes_app/controllers/auth_controller.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var authController = Get.put(AuthController());

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
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
                  controller: authController.nameController,
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
                  controller: authController.emailController,
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
                  controller: authController.passwordController,
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
                  controller: authController.confirmPasswordController,
                  BorderColor: BorderSide(color: NotesColor.purpleColor),
                  borderSide: BorderSide(color: NotesColor.greyColor),
                  borderRadius: BorderRadius.circular(7),
                ),
                SizedBox(
                  height: 5.h,
                ),
                TextButton(
                  onPressed: authController.loading.isTrue
                      ? null
                      : () {
                          // Get.to(() => HomeScreen());

                          authController.registerUser();
                        },
                  child: Obx(
                    () => SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: ElevatedButton(
                        child: authController.loading.isTrue
                            ? Center(
                                child: SizedBox(
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                  height: 20,
                                  width: 20,
                                ),
                              )
                            : Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: NotesColor.purpleColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            )),
                      ),
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
                    onPressed: () {
                      Get.to(() => HomeScreen());
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
                    TextButton(
                      onPressed: () {
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

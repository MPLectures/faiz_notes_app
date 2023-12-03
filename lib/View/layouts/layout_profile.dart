import 'package:faiz_notes_app/View/Screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../Helpers/Constant.dart';
import '../Screens/new_password_screen.dart';
import '../Screens/onBoarding_screen.dart';


class LayoutProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: NotesColor.whiteColor,
        elevation: 0,
        title: Text(
          'Profile',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 24.sp,
              color: NotesColor.blackColor),
          textAlign: TextAlign.center,
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.sp),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Michael Antonio',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w700,
                    color: NotesColor.blackColor,
                  ),
                ),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/Images/mail.png',
                    height: 15.sp,
                    width: 15.sp,
                    color: NotesColor.natural_darkColor,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    ' anto_michael@gmail.com',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: NotesColor.natural_darkColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: OutlinedButton.icon(
                  icon: Image.asset(
                    'assets/Images/pencil-alt.png',
                    height: 20,
                    width: 20,
                    color: NotesColor.purpleColor,
                  ),
                  label: Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: NotesColor.purpleColor,
                    ),
                  ),
                  onPressed: () {
                    Get.to(() => RegisterScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: NotesColor.purpleColor,
                    ),
                    backgroundColor: NotesColor.whiteColor,
                    shape: StadiumBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'APP SETTINGS',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 8.sp,
                    color: NotesColor.natural_darkColor,
                  ),
                ),
              ),
              SizedBox(
                height: 3.sp,
              ),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () { Get.to(() => NewPasswordScreen());},
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/Images/lock-closed.png',
                        height: 25.sp,
                        width: 25.sp,
                        color: NotesColor.blackColor,
                      ),
                      SizedBox(
                        width: 8.sp,
                      ),
                      Text(
                        'Change Password',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: NotesColor.blackColor,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 12.sp,
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    side: BorderSide.none,
                    backgroundColor: NotesColor.whiteColor,
                    shape: StadiumBorder(),
                  ),
                ),
              ),
              Divider( color: NotesColor.naturalLight,),
              SizedBox(
                height: 56,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => OnBoardingScreen());
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/Images/logout.png',
                        height: 25.sp,
                        width: 25.sp,
                        color: NotesColor.redPrimaryColor,
                      ),
                      SizedBox(
                        width: 8.sp,
                      ),
                      Text(
                        'Log Out',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: NotesColor.redPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    side: BorderSide.none,
                    backgroundColor: NotesColor.whiteColor,
                    shape: StadiumBorder(),
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../Helpers/Constant.dart';
import '../View/Screens/new_password_screen.dart';
import '../View/Screens/onBoarding_screen.dart';
import '../controller/bottom_navigation_controller.dart';


class ProfileLayout extends StatelessWidget {
  NavigationController bottomNavigationController =
  Get.put(NavigationController());

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
              Container(
                  padding: EdgeInsets.symmetric(vertical: 5.sp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: NotesColor.whiteColor,
                    border: Border.all(color: NotesColor.purpleColor),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Get.to(() => OnBoardingScreen());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Images/pencil-alt.png',
                          height: 18.sp,
                          width: 18.sp,
                          color: NotesColor.purpleColor,
                        ),
                        SizedBox(
                          width: 4.sp,
                        ),
                        Text(
                          'Edit Profile',
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: NotesColor.purpleColor,
                          ),
                        ),
                      ],
                    ),
                  )),
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
              GestureDetector(
                onTap: () {
                  Get.to(() => NewPasswordScreen());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 7.sp),
                  decoration: BoxDecoration(
                    color: NotesColor.whiteColor,
                    border: Border.all(color: NotesColor.whiteColor),
                  ),
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
                ),
              ),
              Divider(
                color: NotesColor.naturalLight,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => OnBoardingScreen());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 7.sp),
                  decoration: BoxDecoration(
                    color: NotesColor.whiteColor,
                    border: Border.all(color: NotesColor.whiteColor),
                  ),
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
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          currentIndex: bottomNavigationController.currentIndex.value,
          onTap: (Index) {
            bottomNavigationController.changeIndex(Index);
            print('Hello');
          },
          selectedItemColor: NotesColor.purpleColor,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 45.sp,
        width: 45.sp,
        child: FloatingActionButton(
          backgroundColor: NotesColor.purpleColor,
          onPressed: () {
            Get.to(() => OnBoardingScreen());
          },
          child: Icon(
            Icons.add,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

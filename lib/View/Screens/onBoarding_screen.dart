import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../Helpers/Constant.dart';
import 'login_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Media Query
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: NotesColor.purpleColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset('assets/Images/First_Image.png',
                      width: 280.sp, height: 280.sp),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Text(
                    'Jot Down anything you want to '
                    'achieve, today or in the future',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: NotesColor.whiteColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 54,
                child: OutlinedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(),
                      Text(
                        'Let’s Get Started',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: NotesColor.purpleColor),
                        textAlign: TextAlign.center,
                      ),
                      Icon(
                        Icons.arrow_forward_outlined,
                        color: NotesColor.purpleColor,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Get.to(
                      () => LoginScreen(),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.transparent),
                    backgroundColor: NotesColor.naturalLight,
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

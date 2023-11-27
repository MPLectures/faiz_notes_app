import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../Helpers/Constant.dart';
import 'login_screen.dart';

class OnBoardingScreen extends StatelessWidget{
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
          padding:  EdgeInsets.symmetric(horizontal: 16.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset('assets/Images/First_Image.png',
                  width: 300, height: 300,),
                  SizedBox(height: 10.sp,),
                  Text( 'Jot Down anything you want to '
                        'achieve, today or in the future',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 17.sp,
                      color: NotesColor.whiteColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              TextButton(
                onPressed: (){
                  // GetX Routing
                  Get.to(()=>LoginScreen());
                },
                child:Container(
                  height: 45,
                  // width: 370.sp,
                  decoration: BoxDecoration(
                    color: NotesColor.whiteColor,
                    borderRadius: BorderRadius.circular(100),
                    ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(),
                    Text(
                      'Let’s Get Started',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 16.sp,
                          color: NotesColor.purpleColor),
                      textAlign: TextAlign.center,
                    ),
                    Icon(
                      Icons.arrow_forward_outlined,
                      color: NotesColor.purpleColor,
                    ),
                  ],
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
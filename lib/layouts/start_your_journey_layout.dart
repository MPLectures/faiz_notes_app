import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:faiz_notes_app/Helpers/Constant.dart';
import '../View/Screens/add_notes_home_screen.dart';

class StartYourJourneyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 45.sp,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/Images/First Image.png',
              ),
              Text(
                'Start Your Journey',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    color: Colors.black),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                'Every big step start with small step.Notes your first idea and start your journey!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    color: NotesColor.natural_darkColor),
              ),
              SizedBox(
                height: 9.sp,
              ),
              Image.asset(
                'assets/Images/Second Image.png',
                width: 150,
                height: 110,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

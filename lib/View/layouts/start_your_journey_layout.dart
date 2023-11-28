import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:faiz_notes_app/Helpers/Constant.dart';

class StartYourJourneyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Images/First Image.png',
              // width: 220,
              // height: 220,
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
            SizedBox( height:2.sp ),
            Text(
              'Every big step start with small step.Notes your first idea and start your journey!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  color: NotesColor.natural_darkColor),
            ),
            SizedBox( height: 2.sp,),
            Image.asset(
              'assets/Images/Second Image.png',
              width: 150.sp,
              height: 100.sp,
            ),
          ],
        ),
      ),
    );
  }
}

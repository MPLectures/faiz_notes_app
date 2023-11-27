import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../Helpers/Constant.dart';

class CustomAppBar extends StatelessWidget {

  Widget TitleText;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: NotesColor.whiteColor,
      elevation: 0,
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
      // title: Text(
      //   'Back to Login',
      //   style: TextStyle(
      //     fontSize: 16.sp,
      //     fontWeight: FontWeight.w300,
      //     fontFamily: 'Poppins',
      //     color: NotesColor.purpleColor,
      //   ),
      // ),
      title:TitleText,
    );
  }
  // Constructor
  CustomAppBar({required this.TitleText});
}

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class CustomContainerButton extends StatelessWidget {
  Widget? text;
  Color buttonColor;
  double customWidth = 0.0;
  double customHeight = 0.0;
  BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: customWidth,
      height: customHeight,
      padding: EdgeInsets.symmetric(vertical: 10.sp),
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(10),
        borderRadius: borderRadius,
        color: buttonColor,
      ),
      child: text!,
      // child: Text(
      //   // text ?? "",
      //   // textAlign: TextAlign.center,
      //   style: TextStyle(
      //     color: NotesColor.whiteColor,
      //     //Ya han is ki styling kr lena
      //     //now everything is good to gof
      //     fontFamily: 'Poppins',
      //     fontSize: 16,
      //     fontWeight: FontWeight.w500,
      //   ),
      // ),
    );
  }
  CustomContainerButton({
    this.borderRadius,
    this.text,
    required this.customHeight,
    required this.customWidth,
    required this.buttonColor,
  });
}

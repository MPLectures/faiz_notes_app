import 'package:faiz_notes_app/View/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../Custom_Widgets/Custom_ContainerButton.dart';
import '../../Helpers/Constant.dart';
import '../../controller/bottom_navigation_controller.dart';

class NotesHomeScreen extends StatelessWidget {

  BottomNavigationController bottomNavigationController =
  Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: NotesColor.whiteColor,
        elevation: 0,
        title: Text(
          'Notes Home',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 24.sp,
              color: NotesColor.blackColor),
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.sp),
        child: ListView(
          children: [
            Container(
              height: 70.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.sp),
                color: NotesColor.purpleColor,
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: NotesColor.dark_purple,
                  radius: 19,
                  child: Image.asset('assets/Images/light-bulb.png',
                      color: Colors.white),
                ),
                title: Text(
                  'English Notes',
                  style: TextStyle(
                    color: NotesColor.whiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
                subtitle: Text(
                  'Use of parts of speech and interjections..',
                  style: TextStyle(
                    color: NotesColor.primaryColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            Divider(
              color: NotesColor.whiteColor,
            ),
            Container(
              height: 70.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.sp),
                color: NotesColor.purpleColor,
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: NotesColor.dark_purple,
                  radius: 19,
                  child: Image.asset('assets/Images/light-bulb.png',
                      color: Colors.white),
                ),
                title: Text(
                  'English Notes',
                  style: TextStyle(
                    color: NotesColor.whiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
                subtitle: Text(
                  'Use of parts of speech and interjections..',
                  style: TextStyle(
                    color: NotesColor.primaryColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => HomeScreen());
              },
              child: CustomContainerButton(
                customHeight: 52,
                customWidth: 280.sp,
                borderRadius: BorderRadius.circular(8.sp),
                buttonColor: NotesColor.purpleColor,
                text: Text('Save',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: NotesColor.whiteColor)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:faiz_notes_app/View/Screens/my_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../Helpers/Constant.dart';
import '../../controller/bottom_navigation_controller.dart';
import 'add_notes_screen.dart';

class NotesHomeScreen extends StatelessWidget {

  NavigationController bottomNavigationController =
  Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: NotesColor.whiteColor,
        elevation: 0,
        title: Text(
          'Home',
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
              thickness: 0.5,
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
          ],
        ),
      ),
      bottomNavigationBar: Obx( () =>
      BottomNavigationBar(
        currentIndex: bottomNavigationController.currentIndex.value,
          onTap: (Index) {

            bottomNavigationController.changeIndex(Index);
          },
          selectedItemColor: NotesColor.purpleColor,
          unselectedItemColor: NotesColor.natural_darkColor,
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
            Get.to(()=>AddNotesScreen());
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

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import '../../layouts/layout_home.dart';
import '../../layouts/layout_profile.dart';
import 'package:faiz_notes_app/Helpers/Constant.dart';
import '../../controller/bottom_navigation_controller.dart';
import 'package:faiz_notes_app/View/Screens/add_notes_screen.dart';

class start_your_journey_screen extends StatelessWidget {

  NavigationController bottomNavigationController =
      Get.put(NavigationController());

  List layout = [
    layout_home(),
    layout_profile(),
  ];

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
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(

          currentIndex: bottomNavigationController.currentIndex.value,
          onTap: (Index) {
            bottomNavigationController.changeIndex(Index);
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
            Get.to(() => add_notes_screen());
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

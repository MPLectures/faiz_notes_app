import 'package:faiz_notes_app/View/Screens/add_notes_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../Helpers/Constant.dart';
import '../../controller/bottom_navigation_controller.dart';
import '../../layouts/layout_home.dart';
import '../../layouts/layout_profile.dart';

class HomeScreen extends StatelessWidget {
  BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());

  final layout = [
    LayoutHome(),
    LayoutProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: bottomNavigationController.selectedIndex.value,
          children: layout,
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: bottomNavigationController.selectedIndex.value,
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
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
              backgroundColor: Colors.white,
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
            Get.to(() => AddNotesScreen());
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

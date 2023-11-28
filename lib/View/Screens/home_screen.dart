import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../Helpers/Constant.dart';
import 'package:flutter/material.dart';
import '../layouts/layout_home.dart';
import '../layouts/layout_profile.dart';
import 'package:faiz_notes_app/controllers/home_controller.dart';
import 'package:faiz_notes_app/View/Screens/add_notes_home_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var homeController = Get.put(HomeController());

    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: homeController.selectedIndex.value,
          children: [
            LayoutHome(
              controller: homeController,
            ),
            LayoutProfile(),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: homeController.selectedIndex.value,
          onTap: (Index) {
            homeController.changeIndex(Index);
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

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:sizer/sizer.dart';
// import '../Helpers/Constant.dart';
// import '../controller/bottom_navigation_controller.dart';
// import 'layout_home.dart';
// import 'layout_profile.dart';
//
// class CustomBottomNavigation extends StatefulWidget {
//   @override
//   State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
// }
//
// class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
//
//   BottomNavigationController bottomNavigationController =
//   Get.put(BottomNavigationController());
//
//   final layout = [
//     LayoutHome(),
//     LayoutProfile(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: Obx( () =>
//         IndexedStack(
//           index: bottomNavigationController.selectedIndex.value,
//           children: layout,
//         ),
//       ),
//       bottomNavigationBar: Obx( () =>
//         BottomNavigationBar(
//           currentIndex: bottomNavigationController.selectedIndex.value,
//           onTap: (Index) {
//             bottomNavigationController.changeIndex(Index);
//           },
//           selectedItemColor: NotesColor.purpleColor,
//           elevation: 0,
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home,),
//               label: 'Home',
//               backgroundColor: Colors.white,
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.account_circle),
//               label: 'Profile',
//               backgroundColor: Colors.white,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: SizedBox(
//         height: 45.sp,
//         width: 45.sp,
//         child: FloatingActionButton(
//           backgroundColor: NotesColor.purpleColor,
//           onPressed: (){
//             setState(() {
//               Navigator.pushNamed(context, '/add_notes_screen');
//             });},
//           child: Icon(Icons.add,),),),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//     );
//   }
// }

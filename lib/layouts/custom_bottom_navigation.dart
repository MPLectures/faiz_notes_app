import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Helpers/Constant.dart';

class custom_bottom_navigation extends StatefulWidget {
  @override
  State<custom_bottom_navigation> createState() => _custom_bottom_navigationState();
}

class _custom_bottom_navigationState extends State<custom_bottom_navigation> {
int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (Index) {
          setState(() {
            selectedIndex = Index;
          });
        },
        selectedItemColor: NotesColor.purpleColor,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 45.sp,
        width: 45.sp,
        child: FloatingActionButton(
          backgroundColor: NotesColor.purpleColor,
          onPressed: (){
            setState(() {
              Navigator.pushNamed(context, '/add_notes_screen');
            });},
          child: Icon(Icons.add,),),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

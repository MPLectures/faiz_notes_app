import 'package:faiz_notes_app/View/Screens/for_got_password_screen.dart';
import 'package:faiz_notes_app/View/Screens/my_profile_screen.dart';
import 'package:faiz_notes_app/View/Screens/new_password_screen.dart';
import 'package:faiz_notes_app/View/Screens/onBoarding_screen.dart';
import 'package:faiz_notes_app/View/Screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';

import 'View/Screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) =>
          GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: MyProfileScreen(),
          ),
    );
  }
}





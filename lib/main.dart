import 'package:faiz_notes_app/View/Screens/onBoarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';
import 'View/Screens/add_notes_screen.dart';
import 'View/Screens/start_your_journey_screen.dart';

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
            home: onBoarding_screen(),
          ),
    );
  }
}





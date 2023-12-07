import 'package:faiz_notes_app/Helpers/firebase_helpers.dart';
import 'package:faiz_notes_app/View/Screens/home_screen.dart';
import 'package:faiz_notes_app/View/Screens/onBoarding_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sizer/sizer.dart';

import 'firebase_options.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: AuthConstants.isUserLoggedIn ? HomeScreen() : OnBoardingScreen(),
        theme: ThemeData(useMaterial3: false),
      ),
    );
  }
}

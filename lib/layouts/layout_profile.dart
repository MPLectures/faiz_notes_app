import 'package:flutter/material.dart';
class layout_profile extends StatelessWidget {
  const layout_profile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
     centerTitle: true,
        title: Text('Profile',style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,),
      ),
      backgroundColor: Colors.teal,
      body: Center(),
    );
  }
}

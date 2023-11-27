import 'package:flutter/material.dart';
class layout_home extends StatelessWidget {
  const layout_home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home',style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,),
      ),
      backgroundColor: Colors.deepOrange,
      body: Center(),
    );
  }
}

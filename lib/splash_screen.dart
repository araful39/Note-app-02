import 'dart:async';

import 'package:flutter/material.dart';
import 'package:note_app_02/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) =>MyHomePage())));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.amber.shade600,
          child: Center(child: Text("Note App",style: TextStyle(color: Colors.white,fontSize: 40,fontStyle: FontStyle.italic),)),
        ),
      ),
    );
  }
}

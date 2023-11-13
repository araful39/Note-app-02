import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app_02/Pages/note-write.dart';
import 'package:note_app_02/splash_screen.dart';


void main(){
  runApp(MyApp());
}
MaterialApp MyApp(){
  return MaterialApp(
    home: SplashScreen(),
  );
}
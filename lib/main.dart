import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getgame/view/home_Screen.dart';

void main(){
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>Home_Scrren(),
      },
    )
  );
}
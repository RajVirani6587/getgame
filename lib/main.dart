import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getgame/view/Secode_Screen.dart';
import 'package:getgame/view/cart_screen.dart';
import 'package:getgame/view/first_Screen.dart';
import 'package:getgame/view/home_Screen.dart';

void main(){
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        //'/':(context)=>Home_Scrren(),
        '/':(context)=>Apple_Screen(),
        'sec':(context)=>secode_Screen(),
        'cart':(context)=>cart_Screen(),
      },
    )
  );
}
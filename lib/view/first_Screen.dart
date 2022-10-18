import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getgame/controller/apple_Controller.dart';
import 'package:getgame/view/Secode_Screen.dart';

import 'cart_screen.dart';

class Apple_Screen extends StatefulWidget {
  const Apple_Screen({Key? key}) : super(key: key);

  @override
  State<Apple_Screen> createState() => _Apple_ScreenState();
}

class _Apple_ScreenState extends State<Apple_Screen> {
  apple_Controller screen_Controller = Get.put(apple_Controller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Market"),
          centerTitle:true,
          actions: [
            IconButton(onPressed: (){
              Get.to(cart_Screen());
            }, icon: Icon(Icons.shop)),
          ],
        ),
        body: ListView.builder(
            itemCount: screen_Controller.l1.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  screen_Controller.Datapick = screen_Controller.l1.value[index];
                  Get.to(secode_Screen());
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  color: Colors.grey,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("${screen_Controller.l1.value[index].image}",
                        style: TextStyle(fontSize: 50),),
                      Text("${screen_Controller.l1.value[index].name}",style: TextStyle(color: Colors.white),),
                      Text("${screen_Controller.l1.value[index].price}",style: TextStyle(color: Colors.white)),
                    ],
                  ),

                ),
              );
            }),
      ),
    );
  }
}

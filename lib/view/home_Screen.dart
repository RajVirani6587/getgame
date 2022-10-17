import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getgame/controller/controller_Page.dart';

class Home_Scrren extends StatefulWidget {
  const Home_Scrren({Key? key}) : super(key: key);

  @override
  State<Home_Scrren> createState() => _Home_ScrrenState();
}

class _Home_ScrrenState extends State<Home_Scrren> {
  var screen_Controller = Get.put(Top_Controller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("GetGame"),
          actions: [
            IconButton(onPressed: (){
              screen_Controller.cached();
            }, icon:Icon(Icons.cached)),
          ],
          centerTitle: true,
        ),
        body: Center(
          child: Builder(
            builder: (context) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GetBuilder(
                       init:Top_Controller(),
                      builder: (controller){
                    return Text("${screen_Controller.i}",style: TextStyle(fontSize: 40),);
                  }),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      InkWell(onTap: (){
                        screen_Controller.addition();
                      },
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black
                          ),
                          child: Center(child: Text("+",style: TextStyle(color: Colors.white),),),
                        ),
                      ),

                      InkWell(onTap: (){
                        screen_Controller.subtraction();
                      },
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black
                          ),
                          child: Center(child: Text("-",style: TextStyle(color: Colors.white),),),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(onTap: (){
                        screen_Controller.multiplication2();
                      },
                        child: Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blueAccent,
                          ),
                          child: Center(child: Text("2×",style: TextStyle(fontSize: 25,color: Colors.white),),),
                        ),
                      ),

                      InkWell(onTap: (){
                        screen_Controller.multiplication4();
                      },
                        child: Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blueAccent,
                          ),
                          child: Center(child: Text("4×",style: TextStyle(fontSize: 25,color: Colors.white),),),
                        ),
                      ),

                      InkWell(onTap: (){
                        screen_Controller.multiplication6();
                      },
                        child: Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blueAccent,
                          ),
                          child: Center(child: Text("6×",style: TextStyle(fontSize: 25,color: Colors.white),),),
                        ),
                      ),
                    ],
                  )
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}
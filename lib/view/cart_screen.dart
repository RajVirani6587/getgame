import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/apple_Controller.dart';

class cart_Screen extends StatefulWidget {
  const cart_Screen({Key? key}) : super(key: key);

  @override
  State<cart_Screen> createState() => _cart_ScreenState();
}

class _cart_ScreenState extends State<cart_Screen> {
  apple_Controller screen_Controller = Get.put(apple_Controller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Obx(
                  () =>
                  ListView.builder(itemCount: screen_Controller.Cart.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        color: Colors.grey,
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("${screen_Controller.Cart.value[index].image}",
                              style: TextStyle(fontSize: 50),),
                            Text("${screen_Controller.Cart.value[index].name}",
                              style: TextStyle(color: Colors.white),),
                            Text("${screen_Controller.Cart.value[index].price}",
                                style: TextStyle(color: Colors.white)),
                            IconButton(onPressed: (){
                              screen_Controller.Cart.removeAt(index);
                            }, icon: Icon(Icons.delete)),
                          ],
                        ),

                      );
                    },)
          ),
        ));
  }
}

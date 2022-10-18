import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/apple_Controller.dart';

class secode_Screen extends StatefulWidget {
  const secode_Screen({Key? key}) : super(key: key);

  @override
  State<secode_Screen> createState() => _secode_ScreenState();
}

class _secode_ScreenState extends State<secode_Screen> {
  apple_Controller screen_Controller = Get.put(apple_Controller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("${screen_Controller.Datapick!.name}"),
          centerTitle: true,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text("${screen_Controller.Datapick!.image}",style: TextStyle(fontSize: 100),),
                SizedBox(height: 15,),
                Text("${screen_Controller.Datapick!.name}"),
                SizedBox(height: 6,),
                Text("${screen_Controller.Datapick!.price}₹"),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: ()
                    {screen_Controller.Cart.value.add(screen_Controller.Datapick!);
                    }, child: Text("add to pay")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

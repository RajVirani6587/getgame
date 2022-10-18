import 'package:get/get.dart';

import '../model/model.dart';

class apple_Controller extends GetxController{
  
  RxList <DataModel> l1 =[
    DataModel(name: "Apple",image:"🍎",price: "70"),
    DataModel(name: "Kiwi",image:"🥝",price: "500"),
    DataModel(name: "Strawberry",image:"🍓",price: "200"),
    DataModel(name: "Mango",image:"🥭",price: "200"),
    DataModel(name: "painApple",image:"🍍",price: "90"),
    DataModel(name: "WaterMelon",image:"🍉",price: "60"),
    DataModel(name: "Grapes",image:"🍇",price: "75"),
    DataModel(name: "bannan",image:"🍌",price: "45"),
  ].obs;

  DataModel? Datapick;

  RxList<DataModel>Cart = <DataModel>[].obs;
}
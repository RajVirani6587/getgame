import 'package:get/get_state_manager/get_state_manager.dart';

class Top_Controller extends GetxController{

  int i=0;

  void addition()
  {
    i++;
    update();
  }
  void subtraction()
  {
    i--;
    update();
  }
  void multiplication2()
  {
     i=i*2;
     update();
  }
  void multiplication4()
  {
    i=i*4;
    update();
  }
  void multiplication6()
  {
    i=i*6;
    update();
  }
  void cached()
  {
    i=0;
    update();
  }
}

import 'package:get/state_manager.dart';

class CounterController extends GetxController{

  late int count=0;

  void  increment(){
    //count = (count +  1);
    count++;
    print("Counter: $count");
  }

}
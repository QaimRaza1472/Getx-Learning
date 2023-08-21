
import 'package:get/state_manager.dart';

class CounterController extends GetxController{

   int count = 0;

  void  increment(){
    //count = (count +  1);
    ++count;
    /// Built in function to update the UI value
    update();
    print("Counter: $count");
  }


}
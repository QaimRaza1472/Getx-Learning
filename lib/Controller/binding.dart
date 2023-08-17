import 'package:get/get.dart';
import 'increment_controller.dart';



class StoreBinding implements Bindings {

  // default dependency
  @override
  void dependencies() {
    Get.lazyPut(() => CounterController());
  }
}
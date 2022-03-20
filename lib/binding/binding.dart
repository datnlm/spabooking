import 'package:get/get.dart';
import 'package:spa_booking/controller/services.dart';
import 'package:spa_booking/controller/spa.dart';

class Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpaController());
    Get.lazyPut(() => ServicesController());
  }
}
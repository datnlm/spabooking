import 'dart:io';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:spa_booking/Screens/SpaDetail/servies_detail_screen.dart';
import 'package:spa_booking/models/services.dart';
import 'dart:convert';

import 'package:spa_booking/models/spa.dart';

class ServicesController extends GetxController {
  List<Services> listServices = <Services>[].obs;
  var isLoading = true.obs;
  List<Services> servicesDetail = <Services>[].obs;
  @override
  onInit() {
    getServices();
    super.onInit();
  }

  Future<List<Services>> getServices() async {
    try {
      isLoading(true);
      final response = await http
          .get(Uri.parse('http://bookings3v1.somee.com/api/v1/services'));
      print('services');
      print(response.statusCode);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var services = servicesReponseFromJson(jsonString);
        if (services.data != null) {
          listServices = services.data as List<Services>;
          update();
        }
      }
    } catch (error) {
      print('loi');
    } finally {
      isLoading(false);
    }
    return listServices;
  }
  Future<List<Services>> getServicesDetail(int? id) async {
    try {
      print('chay services detail');
      print(id);
      isLoading(true);
      final response =
          await http.get(Uri.parse('http://bookings3v1.somee.com/api/v1/services/${id}'));
      print(response.statusCode);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var servies = servicesReponseFromJson(jsonString);
        if (servies.data != null) {
          print('hihi');
          servicesDetail = servies.data as List<Services>;
          update();
          Get.to(ServicesDetailScreen());
        }
      }
    } catch (error) {
      print('loi');
    } finally {
      isLoading(false);
    }
    return servicesDetail;
  }
}

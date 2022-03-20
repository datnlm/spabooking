import 'package:spa_booking/models/service.dart';
import 'package:spa_booking/models/spa.dart';

class Appointment{
  Spa spa;
  List<Service> services;
  Appointment({required this.spa, required this.services});
}
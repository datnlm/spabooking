import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spa_booking/Screens/Appointment/components/history.dart';
import 'package:spa_booking/Screens/Appointment/components/upcoming.dart';
import 'package:spa_booking/controller/spa.dart';
import 'package:spa_booking/models/list_spa.dart';
import 'package:spa_booking/models/service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spa_booking/utils/sa.dart';


import 'package:get/get.dart';
class BodyAppointment extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _BodyAppointment();
  }
}
class _BodyAppointment extends State<BodyAppointment>{
  final SpaController _spaController = Get.find<SpaController>();

  // ListSpa list=ListSpa();
  @override
  Widget build(BuildContext context) {

    // Service service=list.allService[0];
    Size size =MediaQuery.of(context).size;
    return Padding(
        padding: EdgeInsets.all(12),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15,),
            Text(
              "Appointments Upcoming",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 15,),
            // for(int i=0; i<2;i++)
            //   UpcomingServiceBox(service: Service(service.name, service.rate, service.price,service.cateType,service.sale,service.spa)),
            SizedBox(height: 12,),
            Text(
              "Appointments History",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 15,),

            //   HistoryServiceBox(service: Service(service.name, service.rate, service.price,service.cateType,service.sale,service.spa),cancel: true,),
            // HistoryServiceBox(service: Service(service.name, service.rate, service.price,service.cateType,service.sale,service.spa),cancel: false,),

          ],
        ),
      )
    );
  }
}

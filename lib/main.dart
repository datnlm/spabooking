import 'package:flutter/material.dart';
import 'package:spa_booking/Screens/BookingAppointment/bookingDetail/booking_detail_screen.dart';
import 'package:spa_booking/Screens/Home/home_screen.dart';
import 'package:spa_booking/Screens/Login/login_screen.dart';
import 'package:spa_booking/Screens/SpaDetail/servies_detail_screen.dart';
import 'package:spa_booking/Screens/SpaDetail/spa_detail_screen.dart';
import 'package:spa_booking/binding/binding.dart';
import 'package:spa_booking/constants.dart';
import 'package:spa_booking/models/spatest.dart';
import 'package:spa_booking/utils/sa.dart';

//  main()  {
//   runApp(
//       MyApp()
//   );
// }
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Spa Booking',
//       theme: ThemeData(
//         primaryColor: kPrimaryBackgroudColor,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       // home: LoginScreen(),
//       home: MainScreen(),
//     );
//   }

// }

import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Binding().dependencies();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home_screen',
      getPages: [
        GetPage(
          name: '/home_screen',
          page: () => MainScreen(),
          binding: Binding(),
        ),
        GetPage(
          name: '/servies_detail_screen',
          page: () => ServicesDetailScreen(),
          binding: Binding(),
        ),
        GetPage(
          name: '/spa_detail_screen.dart',
          page: () => SpaDetailScreen(),
          binding: Binding(),
        ),
      ],
    ),
  );
}


//services -> books_services


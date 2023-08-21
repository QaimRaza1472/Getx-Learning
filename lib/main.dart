import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/Controller/binding.dart';
import 'package:getx_learning/Office/pop_up1.dart';
import 'Controller/increment_controller.dart';
import 'GetxLearning/counter_page.dart';
import 'Office/home_screen.dart';
import 'Office/home_screen3.dart';
import 'Office/otp_dialogue.dart';



void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: StoreBinding(),
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      //home:const HomeScreen(),
       //home: HomeScreen3(),

       //home: ChangePasswordDialog(),

      //home: OtpDialog(),

      home:  const CounterPage(title: 'Flutter Demo Home Page'),
    );
  }
}



import 'package:bookstore/contants.dart';
import 'package:bookstore/featuers/splash/presenation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false,
      title: 'Bookly App',
      theme: ThemeData(
       scaffoldBackgroundColor: kPrimaryColor,
       brightness: Brightness.dark
       ),
      home: const SplashView(),
    );
  }
}

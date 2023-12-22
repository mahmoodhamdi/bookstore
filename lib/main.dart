import 'package:bookstore/contants.dart';
import 'package:bookstore/featuers/splash/presenation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  late AnimationController animationController;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bookly App',
      theme: ThemeData(
          fontFamily: "GT Sectra",
          scaffoldBackgroundColor: kPrimaryColor,
          brightness: Brightness.dark),
      home: const SplashView(),
    );
  }
}

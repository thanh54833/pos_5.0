import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_5/presentation/home/ui/home_screen.dart';
import 'package:pos_5/test/injectable/injector/injector.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/home",

    );
  }
}

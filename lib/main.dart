import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:pos_5/test/injectable/cc_getx/cc_getx.dart';
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
      getPages: [
        GetPage(
          name: "/home",
          page: () => const HomeScreen(),
          binding: BindingsBuilder.put(
            () => HomeController(),
          ),
        )
      ],
    );
  }
}

@singleton
class HomeController extends ViewController {}

class HomeScreen extends CcGetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 100,
              width: 300,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 300,
              color: Colors.blue,
              margin: const EdgeInsets.only(
                top: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

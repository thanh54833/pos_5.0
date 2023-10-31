import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_5/presentation/home/get_x/home_controller.dart';
import 'package:pos_5/test/injectable/cc_getx/cc_getx.dart';

class HomeScreen extends CGetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller.serviceA.value;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                Get.toNamed("/screen_1");
              },
              child: Container(
                height: 100,
                width: 300,
                color: Colors.red,
              ),
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

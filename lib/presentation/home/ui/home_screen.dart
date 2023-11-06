import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_5/presentation/home/get_x/home_controller.dart';
import 'package:pos_5/presentation/screen_2/screen_2_controller.dart';
import 'package:pos_5/test/injectable/cc_getx/cc_getx.dart';
import 'package:pos_5/test/injectable/injector/injector.dart';

class HomeScreen extends CGetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () async {
                // await Get.toNamed("/screen_1");
                //
                // 2.delay(
                //   () {
                //     var name = getIt<Screen1Controller>().name;
                //
                //     print("name :.. $name");
                //   },
                // );

                controller.onTap();
              },
              child: Container(
                height: 100,
                width: 300,
                color: Colors.red,
              ),
            ),
            InkWell(
              onTap: () async {
                await Get.toNamed("/screen_2");

                //GetInstance().put();

                2.delay(
                  () {
                    var name = getIt<Screen2Controller>().screenName;
                    print("name :.. $name");
                  },
                );
              },
              child: Container(
                height: 100,
                width: 300,
                color: Colors.blue,
                margin: const EdgeInsets.only(
                  top: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

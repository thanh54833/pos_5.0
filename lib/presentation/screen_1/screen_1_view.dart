import 'package:flutter/material.dart';
import 'package:pos_5/presentation/screen_1/screen_1_controller.dart';
import 'package:pos_5/test/injectable/cc_getx/cc_getx.dart';

class Screen1View extends CGetView<Screen1Controller> {
  const Screen1View({super.key});

  @override
  Widget build(BuildContext context) {
    print("Screen1View :..");
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Text(
          controller.name,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

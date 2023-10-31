import 'package:flutter/material.dart';
import 'package:pos_5/presentation/screen_2/screen_2_controller.dart';
import 'package:pos_5/test/injectable/cc_getx/cc_getx.dart';

class Screen2View extends CGetView<Screen2Controller> {
  const Screen2View({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Text(
          "Screen 1",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

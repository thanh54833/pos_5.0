import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pos_5/test/injectable/cc_getx/cc_getx.dart';

@injectable
class Screen1Controller extends ViewController {
  @override
  void onInit() {
    // TODO: implement onInit
    if (kDebugMode) {
      print("Screen1Controller -> onInit :..");
    }
    super.onInit();
  }

  @override
  void onReady() {
    if (kDebugMode) {
      print("Screen1Controller -> onReady :..");
    }
    super.onReady();
  }

  @override
  void onClose() {
    if (kDebugMode) {
      print("Screen1Controller -> onClose :..");
    }
    super.onClose();
  }
}

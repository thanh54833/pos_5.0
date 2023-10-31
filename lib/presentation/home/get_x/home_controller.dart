import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:pos_5/presentation/screen_2/screen_2_controller.dart';
import 'package:pos_5/test/injectable/cc_getx/cc_getx.dart';

@injectable
class ServiceA {
  var value = "value";
}

@injectable
class HomeController extends ViewController {
  ServiceA serviceA;

  HomeController({required this.serviceA}) : super();

  @override
  void onInit() {
    if (kDebugMode) {
      print("HomeController -> onInit");
    }
    super.onInit();
  }

  @override
  void onReady() {
    if (kDebugMode) {
      print("HomeController -> onReady");
    }
    super.onReady();
  }

  onTap() async {
    print("onTap :..");

    Get.lazyPut(() => Screen2Controller(), tag: "screen_2_controller");
    Get.find<Screen2Controller>(tag: "screen_2_controller");
    
  }

  @override
  void onClose() {
    if (kDebugMode) {
      print("HomeController -> onReady");
    }
    super.onClose();
  }
}

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
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

  @override
  void onClose() {
    if (kDebugMode) {
      print("HomeController -> onReady");
    }
    super.onClose();
  }
}

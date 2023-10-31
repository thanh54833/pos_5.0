import 'package:get/get.dart';
import 'package:pos_5/core/config/page.dart';
import 'package:pos_5/test/injectable/injector/injector.dart';

class ViewController extends GetxController {
  GetScreen? pageCurrent;

  @override
  void onInit() {
    var current = Get.currentRoute;
    pageCurrent = Get.routeTree.routes
        .where((element) => element.name == current)
        .first as GetScreen;
    super.onInit();
  }
}

abstract class CGetView<T extends ViewController> extends GetView<T> {
  const CGetView({super.key});

  @override
  T get controller => getIt<T>();
}

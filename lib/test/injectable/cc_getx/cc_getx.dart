import 'package:get/get.dart';
import 'package:pos_5/test/injectable/injector/injector.dart';

class ViewController extends GetxController {}

abstract class CcGetView<T extends ViewController> extends GetView<T> {
  const CcGetView({super.key});

  @override
  T get controller => getIt<T>();
}

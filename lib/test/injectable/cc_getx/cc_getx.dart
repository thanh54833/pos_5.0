import 'package:get/get.dart';
import 'package:pos_5/test/injectable/injector/injector.dart';

class ViewController extends GetxController {}

abstract class CGetView<T extends ViewController> extends GetView<T> {
  const CGetView({super.key});

  @override
  T get controller => getIt<T>();
}

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
}

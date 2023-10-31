import 'package:get/get.dart';
import 'package:pos_5/presentation/home/ui/home_screen.dart';

class PageConfig {
  PageConfig._();

  static var instance = PageConfig._();

  var pages = {
    GetPage(
      name: "/home",
      page: () => const HomeScreen(),
    ),
  };
}

import 'package:get/get.dart';
import 'package:pos_5/presentation/home/ui/home_screen.dart';
import 'package:pos_5/presentation/screen_1/screen_1_view.dart';
import 'package:pos_5/presentation/screen_2/screen_2_view.dart';

class PageConfig {
  PageConfig._();

  static var instance = PageConfig._();

  var pages = {
    GetPage(
      name: "/home",
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: "/screen_1",
      page: () => const Screen1View(),
    ),
    GetPage(
      name: "/screen_2",
      page: () => const Screen2View(),
    ),
  };
}

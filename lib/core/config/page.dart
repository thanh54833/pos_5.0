import 'package:get/get.dart';
import 'package:pos_5/presentation/home/ui/home_screen.dart';

class PageView {
  PageView._();

  static var instance = PageView._();

  var pages = {
    GetPage(
      name: "/home",
      page: () => const HomeScreen(),
    )
  };
}

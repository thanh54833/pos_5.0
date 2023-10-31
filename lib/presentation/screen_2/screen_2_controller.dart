import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:pos_5/test/injectable/cc_getx/cc_getx.dart';

@singleton
class Screen2Controller extends ViewController {
  String screenName = "screen_name_2";

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    screenName = "screen_name_2_change";


  }
}

import 'package:injectable/injectable.dart';
import 'package:pos_5/test/injectable/cc_getx/cc_getx.dart';

@singleton
class Screen2Controller extends ViewController {
  String screenName = "screen_name_2";

  @override
  void onReady() {
    super.onReady();
    screenName = "screen_name_2_change";
  }
}

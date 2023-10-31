import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_5/presentation/home/get_x/home_controller.dart';
import 'package:pos_5/presentation/home/ui/home_screen.dart';
import 'package:pos_5/presentation/screen_1/screen_1_controller.dart';
import 'package:pos_5/presentation/screen_1/screen_1_view.dart';
import 'package:pos_5/presentation/screen_2/screen_2_view.dart';
import 'package:pos_5/test/injectable/injector/injector.dart';

class PageConfig {
  PageConfig._();

  static var instance = PageConfig._();

  var screens = [
    GetScreen(
      name: "/home",
      page: () {
        // GetInstance().put(
        //   HomeController(
        //     serviceA: ServiceA(),
        //   ),
        // );
        return const HomeScreen();
      },
      binding: BindingsBuilder.put(
        () => HomeController(
          serviceA: ServiceA(),
        ),
      ),
      gaScreenName: 'home',
    ),
    GetScreen(
      name: "/screen_1",
      page: () => const Screen1View(),
      // binding: BindingsBuilder.put(
      //   () => Screen1Controller(),
      // ),
      binding: BindingsBuilder.put(() => getIt<Screen1Controller>()),
      gaScreenName: 'screen_1',
    ),
    GetScreen(
      name: "/screen_2",
      page: () => const Screen2View(),
      gaScreenName: 'screen_2',
    ),
  ];
}

// ignore: must_be_immutable
class GetScreen<T> extends GetPage<T> {
  String gaScreenName;

  GetScreen({
    required super.name,
    required super.page,
    required this.gaScreenName,
    super.title,
    super.participatesInRootNavigator,
    super.gestureWidth,
    // RouteSettings settings,
    super.maintainState = true,
    super.curve = Curves.linear,
    super.alignment,
    super.parameters,
    super.opaque = true,
    super.transitionDuration,
    super.popGesture,
    super.binding,
    super.bindings = const [],
    super.transition,
    super.customTransition,
    super.fullscreenDialog = false,
    super.children = const <GetPage>[],
    super.middlewares,
    super.unknownRoute,
    super.arguments,
    super.showCupertinoParallax = true,
    super.preventDuplicates = true,
  }) : super();
}

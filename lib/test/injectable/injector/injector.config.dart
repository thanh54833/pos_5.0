// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../presentation/home/get_x/home_controller.dart' as _i6;
import '../../../presentation/screen_1/screen_1_controller.dart' as _i4;
import '../../../presentation/screen_2/screen_2_controller.dart' as _i5;
import '../scope/auth_controller.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of auth-scope dependencies inside of GetIt
  _i1.GetIt initAuthScope({_i1.ScopeDisposeFunc? dispose}) {
    return _i2.GetItHelper(this).initScope(
      'auth',
      dispose: dispose,
      init: (_i2.GetItHelper gh) {
        gh.factory<_i3.AuthController>(() => _i3.AuthController());
        gh.singleton<_i3.AuthController2>(_i3.AuthController2());
      },
    );
  }

// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i4.Screen1Controller>(() => _i4.Screen1Controller());
    gh.singleton<_i5.Screen2Controller>(_i5.Screen2Controller());
    gh.factory<_i6.ServiceA>(() => _i6.ServiceA());
    gh.factory<_i6.HomeController>(
        () => _i6.HomeController(serviceA: gh<_i6.ServiceA>()));
    return this;
  }
}

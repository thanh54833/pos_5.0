import 'package:injectable/injectable.dart';

@Injectable(scope: 'auth')
class AuthController {}

@Singleton(scope: 'auth')
class AuthController2 {}



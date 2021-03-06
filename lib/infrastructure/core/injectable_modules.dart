import 'package:connectivity/connectivity.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class InfrastructureInjectableModules {
  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();
  @lazySingleton
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();
  @lazySingleton
  Connectivity get connectivity => Connectivity();
}

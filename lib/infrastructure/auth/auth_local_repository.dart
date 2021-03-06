import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthLocaleDataSource {
  final FlutterSecureStorage _secureStorage;

  AuthLocaleDataSource(this._secureStorage);

  Future<Option<String>> getToken() async {
    String token;

    try {
      token = await _secureStorage.read(key: 'token');
    } catch (e) {
      //https://github.com/mogol/flutter_secure_storage/issues/43
      _secureStorage.deleteAll();
    }

    return optionOf(token);
  }

  Future<void> setToken(String token) async {
    await _secureStorage.write(
      key: 'token',
      value: token,
    );

    return optionOf(token);
  }

  Future<void> deleteToken() async {
    await _secureStorage.delete(key: 'token');
  }
}

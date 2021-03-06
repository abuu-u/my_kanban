import 'package:connectivity/connectivity.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class NetworkInfo {
  final Connectivity _connectivity;

  NetworkInfo(this._connectivity);

  Future<bool> isConnected() async => _connectivity
      .checkConnectivity()
      .then((result) => result != ConnectivityResult.none);
}

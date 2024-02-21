import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImplUsingInternetConnectionChecker implements NetworkInfo {
  final InternetConnection internetConnection;

  NetworkInfoImplUsingInternetConnectionChecker(this.internetConnection);
  @override
  Future<bool> get isConnected => internetConnection.hasInternetAccess;
}

class NetworkInfoImplUsingInternetConnectivityPlus implements NetworkInfo {
  final Connectivity connectivity;

  NetworkInfoImplUsingInternetConnectivityPlus(this.connectivity);
  @override
  Future<bool> get isConnected async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      return false;
    } else if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }
}

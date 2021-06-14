import 'package:connectivity/connectivity.dart';
import 'package:get/get.dart';

abstract class NetworkManager {
  Future<bool> isOnline();
  Future<bool> isOffline();
}

class FlutterNetworkManager extends NetworkManager {
  Connectivity connectivity;

  FlutterNetworkManager(this.connectivity);

  @override
  Future<bool> isOffline() async {
    return !await isOnline();
  }

  @override
  Future<bool> isOnline() async {
    var connectivityResult = await connectivity.checkConnectivity();

    if (connectivityResult == ConnectivityResult.none) {
      return false;
    }

    return true;
  }
}

Future<bool> isOffline() async {
  final c = Get.find<NetworkManager>();
  return await c.isOffline();
}

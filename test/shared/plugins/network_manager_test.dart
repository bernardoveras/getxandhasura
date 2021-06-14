import 'package:connectivity/connectivity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getxandhasura/shared/plugins/network_manager.dart';
import 'package:mockito/mockito.dart';

import '../../mocks.mocks.dart';

main() {
  late NetworkManager networkManager;
  late Connectivity connectivity;

  setUp(() {
    connectivity = MockConnectivity();
    networkManager = FlutterNetworkManager(connectivity);
  });

  void mockNetwork({required bool online}) {
    var result = online ? ConnectivityResult.mobile : ConnectivityResult.none;
    when(connectivity.checkConnectivity()).thenAnswer((_) async => result);
  }

  test("Test Online", () async {
    mockNetwork(online: true);
    expect(await networkManager.isOnline(), true);

    mockNetwork(online: false);
    expect(await networkManager.isOnline(), false);
  });

  test("Test Offline", () async {
    mockNetwork(online: false);
    expect(await networkManager.isOffline(), true);

    mockNetwork(online: true);
    expect(await networkManager.isOffline(), false);
  });
}

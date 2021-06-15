import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getxandhasura/config/hasura.dart';
import 'package:getxandhasura/shared/plugins/network_manager.dart';
import 'package:hasura_connect/hasura_connect.dart';

class Initializer {
  static Future<void> init() async {
    try {
      WidgetsFlutterBinding.ensureInitialized();

      await initServices();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  static Future<void> initServices() async {
    Get.lazyPut(() => HasuraConnect(HasuraConfig.url), fenix: true);
    Get.lazyPut<NetworkManager>(() => FlutterNetworkManager(Connectivity()), fenix: true);
  }
}

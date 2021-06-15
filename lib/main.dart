import 'package:flutter/material.dart';
import 'application.dart';
import 'config/initializer.dart';
import 'config/routes.dart';

void main() async {
  await Initializer.init();
  var initialRoute = Routes.initialRoute;
  
  runApp(Application(initialRoute));
}
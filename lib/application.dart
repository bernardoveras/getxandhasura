import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getxandhasura/config/routes.dart';

class Application extends StatelessWidget {
  final String initialRoute;
  Application(this.initialRoute);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(411, 820),
      builder: () {
        return GetMaterialApp(
          title: '',
          debugShowCheckedModeBanner: false,
          initialRoute: initialRoute,
          getPages: Routes.routes,
          // theme: AppTheme.light,
          themeMode: ThemeMode.light,
          builder: (context, child) => GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            behavior: HitTestBehavior.opaque,
            child: child,
          ),
        );
      },
    );
  }
}

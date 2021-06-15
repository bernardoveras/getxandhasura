import 'package:get/get.dart';
import 'package:getxandhasura/config/routes.dart';

class Nav {
  static Future<T?>? toHome<T>({bool closeAll = false}) async {
    return await goTo(Routes.HOME, closeAll);
  }

  static Future<T?>? toLogin<T>({bool closeAll = false}) async {
    return await goTo(Routes.LOGIN, closeAll);
  }

  static Future<T?>? toMembers<T>({bool closeAll = false}) async {
    return await goTo(Routes.MEMBERS, closeAll);
  }

  static Future<T?>? goTo<T>(String route, bool closeAll) async {
    if (closeAll == true) return await Get.offAllNamed(route);

    return await Get.toNamed(route);
  }
}

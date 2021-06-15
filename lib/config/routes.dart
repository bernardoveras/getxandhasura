import 'package:get/get.dart';
import 'package:getxandhasura/features/members/presentation/bindings/members_binding.dart';
import 'package:getxandhasura/features/members/presentation/pages/members_page.dart';

class Routes {
  static String get initialRoute => MEMBERS;

  static const HOME = '/';
  static const LOGIN = '/login';
  static const MEMBERS = '/members';

  static List<GetPage> get routes => [
        GetPage(
          name: Routes.MEMBERS,
          page: () => MembersPage(),
          binding: MembersBinding(),
        ),
      ];
}

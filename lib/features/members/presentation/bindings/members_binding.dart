import 'package:get/get.dart';
import 'package:getxandhasura/features/members/data/datasources/member_hasura.dart';
import 'package:getxandhasura/features/members/data/repositories/member_repository_impl.dart';
import 'package:getxandhasura/features/members/domain/repositories/member_repository.dart';
import 'package:getxandhasura/features/members/domain/usecases/members/get_members.dart';
import 'package:getxandhasura/features/members/presentation/controllers/members_controller.dart';

class MembersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MemberHasura>(() => MemberHasuraImpl(Get.find()));
    Get.lazyPut<MemberRepository>(() => MemberRepositoryImpl(Get.find()));
    Get.lazyPut(() => GetMembers(Get.find()));
    Get.lazyPut(() => MembersController(Get.find()));
  }
}

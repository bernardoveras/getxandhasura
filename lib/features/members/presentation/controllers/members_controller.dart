import 'package:get/get.dart';
import 'package:getxandhasura/features/members/domain/entities/member.dart';
import 'package:getxandhasura/features/members/domain/usecases/members/get_members.dart';
import 'package:getxandhasura/shared/utils/state.dart';
import 'package:getxandhasura/shared/extensions/state_extension.dart';


typedef MembersViewState = ViewState<List<Member>>;

class MembersController extends GetxController {
  final GetMembers _getMembers;

  MembersController(this._getMembers);

  final state = MembersViewState();

  Future<void> fetch() => state.update(() => _getMembers());

  @override
  void onInit() {
    super.onInit();
    fetch();
  }
}


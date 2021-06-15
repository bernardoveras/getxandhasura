import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxandhasura/features/members/domain/entities/member.dart';
import 'package:getxandhasura/features/members/presentation/controllers/members_controller.dart';
import 'package:getxandhasura/shared/errors/error_state.dart';
import 'package:getxandhasura/shared/utils/state.dart';

class MembersPage extends StatefulWidget {
  @override
  _MembersPageState createState() => _MembersPageState();
}

class _MembersPageState extends State<MembersPage> {
  final MembersController controller = Get.find();
  ViewState get state => controller.state;
  ErrorState? get error => state.error;
  List<Member>? get value => state.value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Membros'),
      ),
      body: SingleChildScrollView(
        child: Obx(
          () => Column(
            children: [
              if (state.loading) ...{
                Center(
                  child: CircularProgressIndicator(),
                )
              },
              if (error != null) ...{
                Center(
                  child: Text(error?.message ?? 'Error'),
                )
              },
              if (value?.isEmpty == false) ...{
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.value.length,
                  itemBuilder: (context, index) => Text(state.value[index].name),
                )
              }
            ],
          ),
        ),
      ),
    );
  }
}

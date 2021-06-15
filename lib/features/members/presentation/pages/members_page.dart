import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxandhasura/features/members/domain/entities/member.dart';
import 'package:getxandhasura/features/members/presentation/controllers/members_controller.dart';
import 'package:getxandhasura/shared/errors/error_state.dart';
import 'package:getxandhasura/shared/utils/state.dart';
import '../../../../shared/extensions/screen_util_extension.dart';

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
        title: Text(
          'Membros',
          style: TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold, fontFamily: 'Exo', color: Colors.grey.shade900),
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 120.height,
        elevation: 0,
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
                    itemBuilder: (context, index) {
                      var member = value![index];
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(16.radius),
                        ),
                        height: 120.height,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(24.height),
                        clipBehavior: Clip.antiAlias,
                        child: Row(
                          children: [
                            Container(
                              height: 120.height,
                              width: 5.width,
                              color: Colors.pinkAccent,
                            ),
                            SizedBox(width: 10.width),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  member.name,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                if (member.cellphone != null) ...{
                                  SizedBox(height: 5.height),
                                  Text(
                                    member.cellphone!,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                }
                              ],
                            ),
                          ],
                        ),
                      );
                    })
              }
            ],
          ),
        ),
      ),
    );
  }
}

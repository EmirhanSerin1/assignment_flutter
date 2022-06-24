import 'package:assignment_flutter/view/common_area/widgets/CA_additional_design.dart';
import 'package:assignment_flutter/view/common_area/widgets/app_bar.dart';
import 'package:assignment_flutter/view/common_area/widgets/body.dart';
import 'package:assignment_flutter/view/common_area/widgets/common_area_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonArea extends StatefulWidget {
  const CommonArea({Key? key}) : super(key: key);

  @override
  State<CommonArea> createState() => _CommonAreaState();
}

class _CommonAreaState extends State<CommonArea> {
  List itemName = ["CONTACT", "ROOM", "DEVICE", "ITEMEXP", "ITEMEXP"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarCustom(),
          SizedBox(height: 20.h),
          CAButtons(itemName: itemName),
          SizedBox(height: 20.h),
          CAAdditionalButtons(itemName: itemName),
          SizedBox(height: 20.h),
          Body(),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CAAdditionalButtons extends StatelessWidget {
  const CAAdditionalButtons({
    Key? key,
    required this.itemName,
  }) : super(key: key);

  final List itemName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return _buildAddItemforLVB(context, itemName[index]);
        },
      ),
    );
  }
}

//for ListViewBuilder
_buildAddItemforLVB(BuildContext context, String text) {
  return Padding(
    padding: EdgeInsets.only(left: 27.w, bottom: 5.h, top: 5.h),
    child: Container(
      padding: EdgeInsets.only(left: 22.w, right: 30.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(255, 67, 80, 95),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.add, color: Colors.white, size: 55.sp),
          SizedBox(width: 10.w),
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Colors.white, fontSize: 40.sp),
          ),
        ],
      ),
    ),
  );
}

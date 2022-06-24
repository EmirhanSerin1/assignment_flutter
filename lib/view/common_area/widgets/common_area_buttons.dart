

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CAButtons extends StatelessWidget {
  const CAButtons({
    Key? key,
    required this.itemName,
  }) : super(key: key);

  final List itemName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 27.w, bottom: 5.h, top: 5.h, right: 27.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildAddItem(context, itemName[0], Icons.add, () {}),
          _buildAddItem(context, itemName[1], Icons.add, () {}),
          _buildAddItem(context, itemName[2], Icons.add, () {}),
          _buildMoreItem(context, "8 NOTES", () => null)
        ],
      ),
    );
  }
}


_buildMoreItem(BuildContext context, String text, Function()? function) {
  return InkWell(
    onTap: function,
    child: Container(
      padding:
          EdgeInsets.only(left: 30.w, right: 22.w, top: 15.w, bottom: 15.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(255, 67, 80, 95),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Colors.white, fontSize: 35.sp),
          ),
          SizedBox(width: 10.w),
          Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: Icon(Icons.arrow_forward_ios_outlined,
                color: Colors.white, size: 35.sp),
          ),
        ],
      ),
    ),
  );
}


_buildAddItem(
    BuildContext context, String text, IconData icon, Function()? function) {
  return InkWell(
    onTap: function,
    child: Container(
      padding:
          EdgeInsets.only(left: 22.w, right: 30.w, top: 15.w, bottom: 15.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(255, 67, 80, 95),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: Colors.white, size: 50.sp),
          SizedBox(width: 10.w),
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Colors.white, fontSize: 35.sp),
          ),
        ],
      ),
    ),
  );
}

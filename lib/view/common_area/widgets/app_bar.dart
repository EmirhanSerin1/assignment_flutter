
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(25.w, 10.h, 0, 10.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.stairs_outlined,
            color: const Color.fromARGB(255, 67, 80, 95),
            size: 85.h,
          ),
          SizedBox(width: 27.w),
          Text(
            "Common area",
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontSize: 65.sp,
                  fontWeight: FontWeight.normal,
                ),
          ),
        ],
      ),
    );
  }
}

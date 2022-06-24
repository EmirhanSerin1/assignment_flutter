import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<Widget> _items = [];

  @override
  Widget build(BuildContext context) {
    _items.add(_buildSmokeDedector(context));
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              _items.add(_buildSmokeDedector(context));
              setState(() {});
            },
            child: Text("bas")),
        ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return _items[index];
          },
        ),
      ],
    );
  }

  Widget _buildSmokeDedector(BuildContext) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.w, vertical: 20.h),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            width: 1,
            color: Colors.blue,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(27.w, 5.w, 27.w, 10.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: 30,
                      child: Row(
                        children: [
                          Icon(
                            Icons.smoke_free,
                            size: 40.sp,
                          ),
                          SizedBox(width: 2),
                          Text(
                            "Smoke detector",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontSize: 30.sp),
                          ),
                          SizedBox(width: 2),
                        ],
                      )),
                  Expanded(
                      flex: 30,
                      child: Row(
                        children: [
                          
                          SizedBox(width: 2),
                          Text(
                            "! Offline",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.orange),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 18,
                      child: Row(
                        children: [
                          Icon(
                            Icons.check,
                            size: 40.sp,
                          ),
                          SizedBox(width: 2),
                          Text(
                            "! Tampered",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.orange),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 30,
                      child: Row(
                        children: [
                          Icon(
                            Icons.check,
                            size: 40.sp,
                          ),
                          SizedBox(width: 2),
                          Text(
                            "Mario@castle.com",
                            style: Theme.of(context).textTheme.bodySmall,
                            overflow: TextOverflow.clip,
                          ),
                          
                        ],
                      )),
                  Expanded(
                    flex: 10,
                    child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(Icons.arrow_drop_up_sharp),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      flex: 30,
                      child: Text(
                        "UPDATED AT",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontWeight: FontWeight.bold),
                      )),
                  Expanded(
                      flex: 88,
                      child: Text(
                        "01.01.1970",
                        style: Theme.of(context).textTheme.bodySmall,
                      )),
                ],
              ),
              Row(
                children: [
                  _buildButton(context, "EDIT", () => null),
                  SizedBox(width: 27.w),
                  _buildButton(context, "DELETE", () => null),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContact(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.w, vertical: 20.h),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            width: 1,
            color: Colors.blue,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(27.w, 5.w, 27.w, 10.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: 30,
                      child: Row(
                        children: [
                          Icon(
                            Icons.person,
                            size: 40.sp,
                          ),
                          SizedBox(width: 2),
                          Text(
                            "Board Member",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontSize: 30.sp),
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.file_copy_outlined,
                            size: 40.sp,
                            color: Colors.grey,
                          )
                        ],
                      )),
                  Expanded(
                      flex: 30,
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone_enabled_outlined,
                            size: 40.sp,
                          ),
                          SizedBox(width: 2),
                          Text(
                            "+47 444 44 444",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.file_copy_outlined,
                            size: 40.sp,
                            color: Colors.grey,
                          )
                        ],
                      )),
                  Expanded(
                      flex: 18,
                      child: Text(
                        "Priority 1",
                        style: Theme.of(context).textTheme.bodySmall,
                      )),
                  Expanded(
                      flex: 30,
                      child: Row(
                        children: [
                          Icon(
                            Icons.alternate_email_outlined,
                            size: 40.sp,
                          ),
                          SizedBox(width: 2),
                          Text(
                            "Mario@castle.com",
                            style: Theme.of(context).textTheme.bodySmall,
                            overflow: TextOverflow.clip,
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.file_copy_outlined,
                            size: 40.sp,
                            color: Colors.grey,
                          )
                        ],
                      )),
                  Expanded(
                    flex: 10,
                    child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(Icons.arrow_drop_up_sharp),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      flex: 30,
                      child: Text(
                        "UPDATED AT",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontWeight: FontWeight.bold),
                      )),
                  Expanded(
                      flex: 88,
                      child: Text(
                        "01.01.1970",
                        style: Theme.of(context).textTheme.bodySmall,
                      )),
                ],
              ),
              Row(
                children: [
                  _buildButton(context, "EDIT", () => null),
                  SizedBox(width: 27.w),
                  _buildButton(context, "DELETE", () => null),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_buildButton(BuildContext context, String text, Function()? function) {
  return InkWell(
    onTap: function,
    child: Container(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 7.w, bottom: 7.w),
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
                .copyWith(color: Colors.white, fontSize: 31.sp),
          ),
        ],
      ),
    ),
  );
}

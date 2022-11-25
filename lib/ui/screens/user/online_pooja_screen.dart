import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../router/my_router.dart';
import '../../../theme/app_assets.dart';
import '../../../widgets/common_app_bar.dart';
import '../../../widgets/home_widgets.dart';

class UserOnlinePoojaScreen extends StatefulWidget {
  const UserOnlinePoojaScreen({Key? key}) : super(key: key);

  @override
  State<UserOnlinePoojaScreen> createState() => _OnlinePoojaScreenState();
}

class _OnlinePoojaScreenState extends State<UserOnlinePoojaScreen> {
  List topPoojsImages = [
    Ig.shivjiHome,
    Ig.ganeshjiHome,
    Ig.shivjiHome,
    Ig.ganeshjiHome,
    Ig.shivjiHome,
    Ig.ganeshjiHome,
    Ig.shivjiHome,
    Ig.ganeshjiHome,
    Ig.shivjiHome,
    Ig.ganeshjiHome,
    Ig.shivjiHome,
    Ig.ganeshjiHome,
    Ig.shivjiHome,
    Ig.ganeshjiHome,
    Ig.shivjiHome,
    Ig.ganeshjiHome,
    Ig.shivjiHome,
    Ig.ganeshjiHome,
    Ig.shivjiHome,
    Ig.ganeshjiHome,
    Ig.shivjiHome,
    Ig.ganeshjiHome,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: commonAppBarPanditji1("Online Pooja"),
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: GridView.builder(
          padding: EdgeInsets.only(top: 50, bottom: 50),
          itemCount: topPoojsImages.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 80.h, crossAxisSpacing: 10.0),
          itemBuilder: (BuildContext context, index) {
            return FittedBox(
              fit: BoxFit.cover,
              child: Container(
                width: 196.w,
                height: 262.h,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromRGBO(224, 224, 224, 1), width: 1.w),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.grey.withOpacity(0.2),
                    //     offset: const Offset(0, 0),
                    //     blurRadius: 6,
                    //   ),
                    // ],
                    // image: DecorationImage(
                    //     image: AssetImage(Ig.logo), fit: BoxFit.cover),
                    color: Color.fromRGBO(248, 248, 248, 1),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: InkWell(
                  onTap: () {
                    Get.toNamed(MyRouter.onlinePoojaDetailsScreen);
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 156.h,
                        width: 177.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(topPoojsImages[index]))),
                      ),
                      addHeight(5.h),
                      Container(
                        height: 48.h,
                        width: 175.w,
                        child: Text(
                          topPoojaNames[index],
                          style: TextStyle(
                              color: Color.fromRGBO(17, 17, 21, 1),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Container(
                            width: 85.w,
                            child: Text(
                              "Start From:",
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Color.fromRGBO(17, 17, 21, 1),
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                            child: Text(
                              "INR 5000/:",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(17, 17, 21, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                      addHeight(5.h),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

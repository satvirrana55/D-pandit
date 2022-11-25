import 'package:digitalastro/router/my_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/colors.dart';

SizedBox addHeight(double size) => SizedBox(height: size.h);

SizedBox addWidth(double size) => SizedBox(width: size.w);

PreferredSize commonAppBarHome(
  String title,
) {
  return PreferredSize(
      preferredSize: Size.fromHeight(75.h),
      child: Container(
        color: AppColors.appPrimaryColor,
        child: Column(
          children: [
            AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Text(
                "Digital Pandit",
                style: TextStyle(fontSize: 16.sp, color: Colors.white),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {
                    Get.toNamed(MyRouter.myWallet);
                  },
                  icon: const Icon(
                    Icons.wallet,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {
                    Get.toNamed(MyRouter.userNotification);
                  },
                  icon: const Icon(
                    Icons.notification_add_outlined,
                    color: Colors.white,
                  ),
                ),
                addWidth(10.w),
              ],
            ),
          ],
        ),
      ));
}

AppBar commonAppBarPanditji(title) {
  title;
  Widget actions;
  return AppBar(
    elevation: 0,
    backgroundColor: AppColors.appPrimaryColor,
    title: Text(
      title,
      style: TextStyle(color: Colors.white, fontSize: 16.sp),
    ),
    centerTitle: true,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      onPressed: () {
        Get.back();
      },
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notification_add_rounded,
            color: Colors.white,
          ))
    ],
  );
}

AppBar commonAppBarPanditji1(title) {
  title;

  return AppBar(
    elevation: 0,
    backgroundColor: AppColors.appPrimaryColor,
    title: Text(
      title,
      style: TextStyle(color: Colors.white, fontSize: 18.sp),
    ),
    centerTitle: true,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      onPressed: () {
        Get.back();
      },
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.white,
          ))
    ],
  );
}

AppBar commonAppBarPanditji2(title) {
  title;

  return AppBar(
    elevation: 0,
    backgroundColor: AppColors.appPrimaryColor,
    title: Text(
      title,
      style: TextStyle(color: Colors.white, fontSize: 18.sp),
    ),
    centerTitle: true,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      onPressed: () {
        Get.back();
      },
    ),
  );
}

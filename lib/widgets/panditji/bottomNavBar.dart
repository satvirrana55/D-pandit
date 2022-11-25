import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../router/my_router.dart';
import '../../theme/app_assets.dart';
import '../../utils/colors.dart';

class CustomBottomNavigationBarPanditJI extends StatefulWidget {
  const CustomBottomNavigationBarPanditJI({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBarPanditJI> createState() =>
      _CustomBottomNavigationBarPanditJIState();
}

class _CustomBottomNavigationBarPanditJIState
    extends State<CustomBottomNavigationBarPanditJI>
    with TickerProviderStateMixin {
  static int selectedTabIndex = 0;

  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: 428.w,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              offset: const Offset(0, 0),
              blurRadius: 6,
            ),
          ],
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      padding: EdgeInsets.symmetric(horizontal: 43.w, vertical: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                selectedTabIndex = 0;
              });
              Get.toNamed(MyRouter.homeScreenPanditji);
            },
            child: Column(
              children: [
                Image.asset(
                  Ig.homeIcon,
                  color: selectedTabIndex == 0
                      ? AppColors.appPrimaryColor
                      : const Color(0xFFA1ADB7),
                  height: 24.h,
                  width: 24.w,
                ),
                addHeight(5.h),
                Text("Home",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: selectedTabIndex == 0
                          ? AppColors.appPrimaryColor
                          : const Color(0xFFA1ADB7),
                    ))
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedTabIndex = 1;
              });
              Get.toNamed(MyRouter.allbookingsScreen);
            },
            child: Column(
              children: [
                Image.asset(
                  Ig.bookingNavBarPanditji,
                  color: selectedTabIndex == 1
                      ? AppColors.appPrimaryColor
                      : const Color(0xFFA1ADB7),
                  height: 24.h,
                  width: 24.w,
                ),
                addHeight(5.h),
                Text(
                  "Booking",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: selectedTabIndex == 1
                        ? AppColors.appPrimaryColor
                        : const Color(0xFFA1ADB7),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(MyRouter.chatScreenPanditji);
              setState(() {
                selectedTabIndex = 2;
              });
            },
            child: Column(
              children: [
                Image.asset(
                  Ig.chatNavBarPanditji,
                  color: selectedTabIndex == 2
                      ? AppColors.appPrimaryColor
                      : const Color(0xFFA1ADB7),
                  height: 24.h,
                  width: 24.w,
                ),
                addHeight(5.h),
                Text(
                  "Chat",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: selectedTabIndex == 2
                        ? AppColors.appPrimaryColor
                        : const Color(0xFFA1ADB7),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedTabIndex = 3;
              });
              Get.toNamed(MyRouter.myAccountScreenPanditji);
            },
            child: Column(
              children: [
                Image.asset(
                  Ig.personicon,
                  color: selectedTabIndex == 3
                      ? AppColors.appPrimaryColor
                      : const Color(0xFFA1ADB7),
                  height: 24.h,
                  width: 24.w,
                ),
                addHeight(5.h),
                Text(
                  "Account",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: selectedTabIndex == 4
                        ? AppColors.appPrimaryColor
                        : const Color(0xFFA1ADB7),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

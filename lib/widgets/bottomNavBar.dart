import 'package:digitalastro/utils/colors.dart';
import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../router/my_router.dart';
import '../theme/app_assets.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar>
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
          borderRadius: const BorderRadius.only(
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
              Get.toNamed(MyRouter.userHomeScreen);
            },
            child: Column(
              children: [
                Image.asset(
                  Ig.homeIcon,
                  color: selectedTabIndex == 0
                      ? AppColors.appPrimaryColor
                      : const Color(0xFF8D8B8B),
                  height: 24.h,
                  width: 24.w,
                ),
                addHeight(4.h),
                Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: selectedTabIndex == 0
                        ? AppColors.appPrimaryColor
                        : const Color(0xFF8D8B8B),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedTabIndex = 1;
              });
              print("ScreenChage");
              Get.toNamed(MyRouter.userPoojaScreen);
            },
            child: Column(
              children: [
                Image.asset(
                  Ig.poojaIcon,
                  color: selectedTabIndex == 1
                      ? AppColors.appPrimaryColor
                      : const Color(0xFF8D8B8B),
                  height: 24.h,
                  width: 24.w,
                ),
                Text(
                  "Pooja",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: selectedTabIndex == 1
                        ? AppColors.appPrimaryColor
                        : const Color(0xFF8D8B8B),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedTabIndex = 2;
              });
              Get.toNamed(MyRouter.allPanditScreen);
            },
            child: Column(
              children: [
                Image.asset(
                  Ig.expertsIcon,
                  color: selectedTabIndex == 2
                      ? AppColors.appPrimaryColor
                      : const Color(0xFF8D8B8B),
                  height: 24.h,
                  width: 24.w,
                ),
                Text(
                  "Experts",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: selectedTabIndex == 2
                        ? AppColors.appPrimaryColor
                        : const Color(0xFF8D8B8B),
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
              Get.toNamed(MyRouter.userMyAccountScreen);
            },
            child: Column(
              children: [
                Image.asset(
                  Ig.personicon,
                  color: selectedTabIndex == 3
                      ? AppColors.appPrimaryColor
                      : const Color(0xFF8D8B8B),
                  height: 24.h,
                  width: 24.w,
                ),
                Text(
                  "Account",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: selectedTabIndex == 3
                        ? AppColors.appPrimaryColor
                        : const Color(0xFF8D8B8B),
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

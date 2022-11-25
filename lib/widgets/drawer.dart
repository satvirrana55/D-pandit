import 'package:digitalastro/router/my_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../theme/app_assets.dart';
import '../utils/colors.dart';
import '../utils/text_styles.dart';
import 'common_app_bar.dart';
import 'common_drawer_container.dart';

SafeArea myDrawer(BuildContext context) {
  return SafeArea(
    bottom: true,
    child: Drawer(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height.h,
            margin: EdgeInsets.all(10),
            width: 350.w,
            child: ListView(
              children: [
                Container(
                  height: 100,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(MyRouter.updateProfileUserScreen);
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          child: CircleAvatar(
                              backgroundImage: AssetImage(Ig.personMyAccount)),
                        ),
                      ),
                      addWidth(25.w),
                      Text(
                        "Manish Nighot",
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(Icons.close))
                    ],
                  ),
                ),
                addHeight(20.h),
                InkWell(
                    onTap: () {
                      print("click");
                      Get.toNamed(MyRouter.userMyAccountScreen);
                    },
                    child: commondrawerContainer(
                        Icons.person_outline_outlined, "My Account")),
                addHeight(15.h),
                InkWell(
                    onTap: () {
                      Get.toNamed(MyRouter.myWallet);
                    },
                    child: commondrawerContainer(Icons.wallet, "My Wallet")),
                addHeight(15.h),
                InkWell(
                    onTap: () {
                      Get.toNamed(MyRouter.myConsultations);
                    },
                    child:
                        commondrawerContainer(Icons.message, "My Pandit ji")),
                addHeight(15.h),
                InkWell(
                    onTap: () {
                      Get.toNamed(MyRouter.userAllBookingsScreen);
                    },
                    child: commondrawerContainer(
                        Icons.calendar_month_outlined, "My Booking")),
                addHeight(15.h),
                InkWell(
                    onTap: () {
                      // Get.toNamed(MyRouter.userHomeScreen);
                    },
                    child: commondrawerContainer(
                        Icons.privacy_tip_outlined, "About App")),
                addHeight(15.h),
                InkWell(
                    onTap: () {
                      Get.toNamed(MyRouter.helpCenter);
                    },
                    child: commondrawerContainer(Icons.help, "Help & Support")),
                addHeight(15.h),
                InkWell(
                    onTap: () {
                      // Get.toNamed(MyRouter.userHomeScreen);
                    },
                    child: commondrawerContainer(
                        Icons.star_rate_outlined, "Rate App")),
                addHeight(15.h),
                InkWell(
                    onTap: () {
                      Get.toNamed(MyRouter.panditjiPersonalDetailsScreen);
                    },
                    child: commondrawerContainer(
                        Icons.edit_calendar_outlined, "Register as Pandit")),
                addHeight(15.h),
                InkWell(
                    onTap: () {
                      // Get.toNamed(MyRouter.userHomeScreen);
                    },
                    child: commondrawerContainer(
                        Icons.newspaper_rounded, "Privacy Policy")),
                addHeight(15.h),
                GestureDetector(
                    onTap: () {
                      Get.toNamed(MyRouter.chooseUserScreen);
                    },
                    child: commondrawerContainer(Icons.logout, "Logout")),
                addHeight(15.h),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(20),
            height: 76.h,
            color: AppColors.appPrimaryColor,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Privacy Policy",
                    style: TextStyle(fontSize: 14.sp, color: Colors.white),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Terms of Services",
                    style: TextStyle(fontSize: 14.sp, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
